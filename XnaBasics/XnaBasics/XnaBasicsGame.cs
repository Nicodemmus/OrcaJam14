//------------------------------------------------------------------------------
// <copyright file="XnaBasicsGame.cs" company="Microsoft">
//     Copyright (c) Microsoft Corporation.  All rights reserved.
// </copyright>
//------------------------------------------------------------------------------

namespace Microsoft.Samples.Kinect.XnaBasics
{
    using Microsoft.Kinect;
    using Microsoft.Xna.Framework;
    using Microsoft.Xna.Framework.Graphics;
    using Microsoft.Xna.Framework.Input;
    using Bespoke.Common;
    using Bespoke.Common.Osc;
    using System;
    using System.Net;

    /// <summary>
    /// The main Xna game implementation.
    /// </summary>
    public class XnaBasics : Microsoft.Xna.Framework.Game
    {

        /// <summary>
        /// This is the UDP port that will be used to communicate with the OSC server.
        /// </summary>
        private const int m_OscServerUdpPort = 5100;

        /// <summary>
        /// This is used to store an instance of an OSC Server, which will be 
        /// the MAX application running in this same computer.
        /// </summary>
        private OscServer m_oscServer;

        private static readonly string AliveMethod = "/osctest/alive";
        private static readonly string TestMethod = "/osctest/test";

        // OSC server Message counters
        private static int sBundlesReceivedCount;
        private static int sMessagesReceivedCount;

        /// <summary>
        /// This is used to adjust the window size.
        /// </summary>
        private const int Width = 800;

        private int level;

        private Boolean clapped;

        private const double maxVisualFeedbackDuration = 500;
        private double currentVisualFeedbackDuration;

        /// <summary>
        /// The graphics device manager provided by Xna.
        /// </summary>
        private readonly GraphicsDeviceManager graphics;
        
        /// <summary>
        /// This control selects a sensor, and displays a notice if one is
        /// not connected.
        /// </summary>
        private readonly KinectChooser chooser;

        /// <summary>
        /// This manages the rendering of the color stream.
        /// </summary>
        private readonly ColorStreamRenderer colorStream;

        /// <summary>
        /// This is the location of the color stream when minimized.
        /// </summary>
        private readonly Vector2 colorSmallPosition;

        /// <summary>
        /// This is the minimized size for both streams.
        /// </summary>
        private readonly Vector2 minSize;

        /// <summary>
        /// This is the viewport of the streams.
        /// </summary>
        private readonly Rectangle viewPortRectangle;

        /// <summary>
        /// This is the SpriteBatch used for rendering the header/footer.
        /// </summary>
        private SpriteBatch spriteBatch;

        /// <summary>
        /// This tracks the previous keyboard state.
        /// </summary>
        private KeyboardState previousKeyboard;

        /// <summary>
        /// This is the texture for the header.
        /// </summary>
        private Texture2D header;

        /// <summary>
        /// This is the font for the footer.
        /// </summary>
        private SpriteFont font;

        /// <summary>
        /// This is the texture for a barrel.
        /// </summary>
        private Texture2D barrel;

        /// <summary>
        /// Initializes a new instance of the XnaBasics class.
        /// </summary>
        public XnaBasics()
        {
            this.IsFixedTimeStep = false;
            this.IsMouseVisible = true;
            this.Window.Title = "Xna Basics";

            // This sets the width to the desired width
            // It also forces a 4:3 ratio for height
            // Adds 110 for header/footer
            this.graphics = new GraphicsDeviceManager(this);
            this.graphics.PreferredBackBufferWidth = Width;
            this.graphics.PreferredBackBufferHeight = ((Width / 4) * 3) + 110;
            this.graphics.PreparingDeviceSettings += this.GraphicsDevicePreparingDeviceSettings;
            this.graphics.SynchronizeWithVerticalRetrace = true;
            this.viewPortRectangle = new Rectangle(10, 80, Width - 20, ((Width - 2) / 4) * 3);

            Content.RootDirectory = "Content";

            // The Kinect sensor will use 640x480 for both streams
            // To make your app handle multiple Kinects and other scenarios,
            // it is recommended to use KinectSensorChooser provided in Microsoft.Kinect.Toolkit (See components in Toolkit Browser).
            this.chooser = new KinectChooser(this, ColorImageFormat.RgbResolution640x480Fps30, DepthImageFormat.Resolution640x480Fps30);
            this.Services.AddService(typeof(KinectChooser), this.chooser);

            // Default size is the full viewport
            this.colorStream = new ColorStreamRenderer(this);

            // Calculate the minimized size and location
            this.colorStream.Size = new Vector2(this.viewPortRectangle.Width / 4, this.viewPortRectangle.Height / 4);
            this.colorStream.Position = new Vector2(Width - this.colorStream.Size.X - 15, 85);

            // Store the values so we can animate them later
            this.minSize = this.colorStream.Size;
            this.colorSmallPosition = this.colorStream.Position;

            this.Components.Add(this.chooser);

            this.previousKeyboard = Keyboard.GetState();

            // Create a connection to the OSC server
            m_oscServer = new OscServer(TransportType.Udp, IPAddress.Loopback, m_OscServerUdpPort);

            // Configure the OSC Server connection
            m_oscServer.FilterRegisteredMethods = false;
            m_oscServer.RegisterMethod(AliveMethod);
            m_oscServer.RegisterMethod(TestMethod);
            m_oscServer.BundleReceived += new EventHandler<OscBundleReceivedEventArgs>(oscServer_BundleReceived);
            m_oscServer.MessageReceived += new EventHandler<OscMessageReceivedEventArgs>(oscServer_MessageReceived);
            m_oscServer.ReceiveErrored += new EventHandler<ExceptionEventArgs>(oscServer_ReceiveErrored);
            m_oscServer.ConsumeParsingExceptions = false;

            // Start the OSC server. This seems to be an independent thread that runs separately to the game loop.
            m_oscServer.Start();

            level = 1;
        }

        /// <summary>
        /// Loads the Xna related content.
        /// </summary>
        protected override void LoadContent()
        {
            this.spriteBatch = new SpriteBatch(this.GraphicsDevice);

            this.Services.AddService(typeof(SpriteBatch), this.spriteBatch);

            this.header = Content.Load<Texture2D>("Header");
            this.font = Content.Load<SpriteFont>("Segoe16");
            this.barrel = Content.Load<Texture2D>("Barrel");

            base.LoadContent();
        }

        /// <summary>
        /// Initializes class and components
        /// </summary>
        protected override void Initialize()
        {
            this.Components.Add(this.colorStream);

            base.Initialize();
        }

        private void update1(GameTime gameTime)
        {
            Console.WriteLine("Updating Level 1...");

            // If the spacebar has been pressed, toggle the focus
            KeyboardState newState = Keyboard.GetState();
            if (this.previousKeyboard.IsKeyUp(Keys.Space) && newState.IsKeyDown(Keys.Space) && clapped == false)
            {
                currentVisualFeedbackDuration = 0;
                clapped = true;
            }

            this.previousKeyboard = newState;

            this.colorStream.Position = this.colorSmallPosition;
            this.colorStream.Size = this.minSize;

            /*
            // Animate the stream positions and sizes
            this.colorStream.Position = Vector2.SmoothStep(
                new Vector2(this.viewPortRectangle.X, this.viewPortRectangle.Y),
                this.colorSmallPosition, 
                (float)(this.transition / TransitionDuration));
            this.colorStream.Size = Vector2.SmoothStep(
                new Vector2(this.viewPortRectangle.Width, this.viewPortRectangle.Height),
                this.minSize, 
                (float)(this.transition / TransitionDuration));

            this.depthStream.Position = Vector2.SmoothStep(
                this.depthSmallPosition,
                new Vector2(this.viewPortRectangle.X, this.viewPortRectangle.Y),
                (float)(this.transition / TransitionDuration));
            this.depthStream.Size = Vector2.SmoothStep(
                this.minSize, 
                new Vector2(this.viewPortRectangle.Width, this.viewPortRectangle.Height),
                (float)(this.transition / TransitionDuration));
            */
            Console.WriteLine("Level 1 updated!");
        }

        private void updateInitialScreen(GameTime gameTime)
        {
            Console.WriteLine("Updating Initial Screen...");
            Console.WriteLine("Initial Screen updated!");
        }

        private void updateGameOver(GameTime gameTime)
        {
            Console.WriteLine("Updating Game Over...");
            Console.WriteLine("Game Over updated!");
        }

        /// <summary>
        /// This method updates the game state. Including monitoring
        /// keyboard state and the transitions.
        /// </summary>
        /// <param name="gameTime">The elapsed game time.</param>
        protected override void Update(GameTime gameTime)
        {
            base.Update(gameTime);

            switch (level)
            {
                case 0:
                    updateInitialScreen(gameTime);
                    break;

                case 1:
                    update1(gameTime);
                    break;

                default:
                    updateGameOver(gameTime);
                    break;
            }

            base.Update(gameTime);
        }

        private void draw1(GameTime gameTime)
        {
            Console.WriteLine("Drawing Level 1...");

            // Render header/footer
            this.spriteBatch.Begin();
            this.spriteBatch.Draw(this.header, Vector2.Zero, null, Color.White);
            this.spriteBatch.DrawString(this.font, "Clap once, keep claping and maintain the rythm.", new Vector2(100, this.viewPortRectangle.Y + this.viewPortRectangle.Height + 3), Color.Black);
            this.spriteBatch.End();

            this.colorStream.DrawOrder = 1;

            if (clapped)
            {
                currentVisualFeedbackDuration += gameTime.ElapsedGameTime.TotalMilliseconds;
                Console.WriteLine(currentVisualFeedbackDuration);
                if (maxVisualFeedbackDuration < currentVisualFeedbackDuration)
                {
                    clapped = false;
                }
            }
        }

        private void drawInitialScreen(GameTime gameTime)
        {
            Console.WriteLine("Drawing Initial Screen...");
        }

        private void drawGameOver(GameTime gameTime)
        {
            Console.WriteLine("Drawing Game Over...");
        }

        /// <summary>
        /// This method renders the current state.
        /// </summary>
        /// <param name="gameTime">The elapsed game time.</param>
        protected override void Draw(GameTime gameTime)
        {
            // Clear the screen
            GraphicsDevice.Clear(Color.White);

            switch (level)
            {
                case 0:
                    drawInitialScreen(gameTime);
                    break;

                case 1:
                    draw1(gameTime);
                    break;

                default:
                    drawGameOver(gameTime);
                    break;
            }

            base.Draw(gameTime);
        }

        /// <summary>
        /// This method ensures that we can render to the back buffer without
        /// losing the data we already had in our previous back buffer.  This
        /// is necessary for the SkeletonStreamRenderer.
        /// </summary>
        /// <param name="sender">The sending object.</param>
        /// <param name="e">The event args.</param>
        private void GraphicsDevicePreparingDeviceSettings(object sender, PreparingDeviceSettingsEventArgs e)
        {
            // This is necessary because we are rendering to back buffer/render targets and we need to preserve the data
            e.GraphicsDeviceInformation.PresentationParameters.RenderTargetUsage = RenderTargetUsage.PreserveContents;
        }


        private static void oscServer_BundleReceived(object sender, OscBundleReceivedEventArgs e)
        {
            sBundlesReceivedCount++;

            OscBundle bundle = e.Bundle;
            Console.WriteLine(string.Format("\nBundle Received [{0}:{1}]: Nested Bundles: {2} Nested Messages: {3}", bundle.SourceEndPoint.Address, bundle.TimeStamp, bundle.Bundles.Count, bundle.Messages.Count));
            Console.WriteLine("Total Bundles Received: {0}", sBundlesReceivedCount);
        }

        private static void oscServer_MessageReceived(object sender, OscMessageReceivedEventArgs e)
        {
            sMessagesReceivedCount++;

            OscMessage message = e.Message;

            Console.WriteLine(string.Format("\nMessage Received [{0}]: {1}", message.SourceEndPoint.Address, message.Address));
            Console.WriteLine(string.Format("Message contains {0} objects.", message.Data.Count));

            for (int i = 0; i < message.Data.Count; i++)
            {
                string dataString;

                if (message.Data[i] == null)
                {
                    dataString = "Nil";
                }
                else
                {
                    dataString = (message.Data[i] is byte[] ? BitConverter.ToString((byte[])message.Data[i]) : message.Data[i].ToString());
                }
                Console.WriteLine(string.Format("[{0}]: {1}", i, dataString));
            }

            Console.WriteLine("Total Messages Received: {0}", sMessagesReceivedCount);
        }

        private static void oscServer_ReceiveErrored(object sender, ExceptionEventArgs e)
        {
            Console.WriteLine("Error during reception of packet: {0}", e.Exception.Message);
        }
    }
}
