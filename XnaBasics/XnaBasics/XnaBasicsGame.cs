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
    using System.Threading;


    /// <summary>
    /// The main Xna game implementation.
    /// </summary>
    public class XnaBasics : Microsoft.Xna.Framework.Game
    {

        enum Level
        {
            InitialScreen,
            WinningScreen,
            GameOverScreen,
            Level1,
            Level2
        };

        enum DrumState
        {
            In,
            Out,
        };


        DrumState currentState;
        DrumState previousState;

        // Mutual exclusion semaphore to access shared data between threads.
        public static System.Object m_semaphore = new System.Object();

        // The following variables are shared between the game thread and the OSC server listening thread.
        private static Boolean m_isGameOver;
        private static Boolean m_YouLose;
        private static Boolean m_playerClaps;
        public static Boolean m_playerCollides;

        // String message to indicate that the player lost.
        private const String m_youLoseMessage = "YouLose";

        // String message to indicate that the player won.
        private const String m_youWinMessage = "YouWin";

        // String message to indicate that the player claps.
        private const String m_clapMessage = "Clap";

        // Screen instances
        GameOverScreen m_gameOverScreen;
        WinningScreen m_winningScreen;
        StartScreen m_gameStartupScreen;

        private int score;
        private int maxScore;

        /// <summary>
        /// This is the UDP port that will be used to receive messages from the OSC server.
        /// </summary>
        private const int m_OscServerUdpRxPort = 5100;

        /// <summary>
        /// This is the UDP port that will be used to Transmit messages to the OSC server.
        /// </summary>
        public static int m_OscServerUdpTxPort = 5101;

        /// <summary>
        /// This is used to store an instance of an OSC Server, which will be 
        /// the MAX application running in this same computer. This instance is 
        /// used to receive OSC messages
        /// </summary>
        private OscServer m_oscRxServer;

        // Variables for the OSC message transmitter
        ITransmitter transmitter;
        OscBundle txBundle;

        /// <summary>
        /// This is used to store an instance of an OSC Server, which will be 
        /// the MAX application running in this same computer. This instance is 
        /// used to transmit OSC messages
        /// </summary>
        private OscServer m_oscTxServer;

        private static readonly string AliveMethod = "/osctest/alive";
        private static readonly string TestMethod = "/osctest/test";

        // OSC server Message counters
        private static int sBundlesReceivedCount;
        private static int sMessagesReceivedCount;

        /// <summary>
        /// This is used to adjust the window size.
        /// </summary>
        private const int Width = 800;

        private static Level level;

        private Boolean clapped;

        private double winningScreenCurrentTime;
        private const double winningScreenMaxTime = 5000;

        private const double maxVisualFeedbackDuration = 100;
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

        private readonly Vector2 colorMaxPosition;

        /// <summary>
        /// This is the minimized size for both streams.
        /// </summary>
        private readonly Vector2 minSize;

        private readonly Vector2 maxSize;
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
        private float barrelScale;
        private float barrelRealScale = 0.5f;
        private float barrelBigScale = 0.6f;

        /// <summary>
        /// This is the texture, position and scale for the snare drum
        /// </summary>

        private Texture2D snare;
        private float snareScale;
        private float snareRealScale = 1.0f;
        private float snareBigScale = 1.1f;
        private Vector2 snarePosition;

        private Boolean gameOver;
        private Boolean gameLost;

        private Boolean colision;
        public static Boolean playerColided;

        /// <summary>
        /// Initializes a new instance of the XnaBasics class.
        /// </summary>
        public XnaBasics()
        {
            this.IsFixedTimeStep = false;
            this.IsMouseVisible = true;
            this.Window.Title = "Kinetic Sounds";

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

            // Calculate the Maximum values for the video stream
            this.maxSize = new Vector2(this.viewPortRectangle.Width, this.viewPortRectangle.Height);
            this.colorMaxPosition = new Vector2(10, 85);


            this.Components.Add(this.chooser);

            this.previousKeyboard = Keyboard.GetState();


            // Initialize those variables that are shared between the game thread and the 
            // OSC server thread. Note that is not neccessary to lock the resources since we 
            // have not yet started the OSC server thread.

            m_isGameOver = false;
            m_YouLose = false;

            m_playerCollides = false;

            // Create a connection to the OSC RX server
            m_oscRxServer = new OscServer(TransportType.Udp, IPAddress.Loopback, m_OscServerUdpRxPort);

            // Configure the OSC Server connection
            m_oscRxServer.FilterRegisteredMethods = false;
            m_oscRxServer.RegisterMethod(AliveMethod);
            m_oscRxServer.RegisterMethod(TestMethod);
            m_oscRxServer.BundleReceived += new EventHandler<OscBundleReceivedEventArgs>(oscServer_BundleReceived);
            m_oscRxServer.MessageReceived += new EventHandler<OscMessageReceivedEventArgs>(oscServer_MessageReceived);
            m_oscRxServer.ReceiveErrored += new EventHandler<ExceptionEventArgs>(oscServer_ReceiveErrored);
            m_oscRxServer.ConsumeParsingExceptions = false;

            // Start the OSC server. This seems to be an independent thread that runs separately to the game loop.
            m_oscRxServer.Start();


            // Create OSC message bundle
            txBundle = CreateMessageBundle();

            // Create OSC message transmitter
            transmitter = new UdpTransmitter();

            transmitter.Start(txBundle);


            level = Level.InitialScreen;

            barrelScale = barrelRealScale;
            snareScale = snareRealScale;

            gameOver = false;
            playerColided = false;
            colision = false;

            currentState = DrumState.Out;
            previousState = DrumState.Out;
            maxScore = 0;
        }

        public static void startGame()
        {
            m_isGameOver = false;
            m_YouLose = false;
            level = Level.InitialScreen;
        }

        public static void startLevel2()
        {
            m_isGameOver = false;
            m_YouLose = false;
            level = Level.Level2;
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
            this.snare = Content.Load<Texture2D>("snare");


            m_gameOverScreen = new GameOverScreen(this);

            m_winningScreen = new WinningScreen(this);

            m_gameStartupScreen = new StartScreen(this);


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
//            Console.WriteLine("Updating Level 1...");

            
            lock (m_semaphore)
            {
                if (m_playerClaps && !clapped)
                {
                    clapped = true;
                    currentVisualFeedbackDuration = 0;
                    Console.WriteLine("Clap");
                }
                m_playerClaps = false;
            }
            
            lock (m_semaphore)
            {
                gameOver = m_isGameOver;
                gameLost = m_YouLose;
            }

            if (gameOver)
            {
                if (gameLost == true)
                {
                    level = Level.GameOverScreen;
                }
                else
                {
                    level = Level.WinningScreen;
                }
            }

            KeyboardState newState = Keyboard.GetState();
            if (this.previousKeyboard.IsKeyUp(Keys.Space) && newState.IsKeyDown(Keys.Space) && !clapped)
            {
                currentVisualFeedbackDuration = 0;
                clapped = true;
                Console.WriteLine("Clap");
            }

            if (clapped)
            {
                barrelScale = barrelBigScale;
                currentVisualFeedbackDuration += gameTime.ElapsedGameTime.TotalMilliseconds;
                Console.WriteLine(currentVisualFeedbackDuration);
                if (maxVisualFeedbackDuration < currentVisualFeedbackDuration)
                {
                    Console.WriteLine("unClap");
                    clapped = false;
                    currentVisualFeedbackDuration = 0;
                    barrelScale = barrelRealScale;
                }
            }

            this.previousKeyboard = newState;

            this.colorStream.Position = this.colorSmallPosition;
            this.colorStream.Size = this.minSize;



//            Console.WriteLine("Level 1 updated!");
        }



        private void updateL2(GameTime gameTime)
        {
            //            Console.WriteLine("Updating Level 2...");

            lock (m_semaphore)
            {
                gameOver = m_isGameOver;
                gameLost = m_YouLose;

                m_isGameOver = false;
                m_YouLose = false;
            }

            if (gameOver)
            {
                score = 0;
                gameOver = false;
            }

            this.colorStream.Position = this.colorMaxPosition;
            this.colorStream.Size = this.maxSize;
            this.snarePosition = new Vector2(50, 400);
            //            Console.WriteLine("Objec: ({0},{1}) W:{2} H:{3}", this.snarePosition.X, this.snarePosition.Y, this.snare.Bounds.Width, this.snare.Bounds.Height);
  //          Console.WriteLine("Objec: L:{0} R:{1} T:{2} B:{3}", this.snare.Bounds.Left, this.snare.Bounds.Right, this.snare.Bounds.Top, this.snare.Bounds.Bottom);
            // Did the player collide with any of their joints?
            if (SkeletonStreamRenderer.didJointCollide(new Rectangle ((int)this.snarePosition.X, (int)this.snarePosition.Y - 110, (int) this.snare.Bounds.Width, (int)this.snare.Bounds.Height), spriteBatch))
            {
                colision = true;
//                Console.WriteLine("You Collided!");
            }
            else
            {
                colision = false;
//                Console.WriteLine("You did not Collide!");
            }

                //it colided
            previousState = currentState;
            if (colision)
            {
                currentState = DrumState.In;
            }
            else
            {
                currentState = DrumState.Out;
            }
            currentVisualFeedbackDuration += gameTime.ElapsedGameTime.TotalMilliseconds;
            playerColided = false;
            if (currentState != previousState && currentState == DrumState.In)
            {
                if (currentVisualFeedbackDuration > maxVisualFeedbackDuration)
                {
                    snareScale = snareBigScale;
                    playerColided = true;
                    Console.WriteLine("You Collided!");
                    score++;
                    currentVisualFeedbackDuration = 0;
                }
            }

            KeyboardState newState = Keyboard.GetState();
            if (this.previousKeyboard.IsKeyUp(Keys.Space) && newState.IsKeyDown(Keys.Space) && !clapped)
            {
                if (currentVisualFeedbackDuration > maxVisualFeedbackDuration)
                {
                    snareScale = snareBigScale;
                    playerColided = true;
                    Console.WriteLine("You Collided!");
                    score++;
                    currentVisualFeedbackDuration = 0;
                }
            }

            if (maxScore < score)
                maxScore = score;

            this.previousKeyboard = newState;

            if (currentVisualFeedbackDuration > maxVisualFeedbackDuration)
            {
                snareScale = snareRealScale;
            }

            //            Console.WriteLine("Level 2 updated!");
        }

        private void draw1(GameTime gameTime)
        {
//            Console.WriteLine("Drawing Level 1...");

            // Render header/footer

            this.spriteBatch.Begin();
            this.spriteBatch.Draw(this.barrel, new Vector2((800 - (this.barrel.Width * barrelScale)) / 2, (600 - (this.barrel.Height * barrelScale)) / 2)
                , null, Color.White, 0f, Vector2.Zero, barrelScale, SpriteEffects.None, 0f);
            this.spriteBatch.Draw(this.header, Vector2.Zero, null, Color.White);
            this.spriteBatch.DrawString(this.font, "Clap once, keep claping and maintain the rythm.", new Vector2(100, this.viewPortRectangle.Y + this.viewPortRectangle.Height + 3), Color.Black);
            this.spriteBatch.End();

            this.colorStream.DrawOrder = 1;

        }


        private void drawL2(GameTime gameTime)
        {
            //            Console.WriteLine("Drawing Level 2...");

            // Render header/footer
            this.spriteBatch.Begin();
            this.spriteBatch.Draw(this.header, Vector2.Zero, null, Color.White);
            this.spriteBatch.Draw(this.snare, this.snarePosition, null, Color.White, 0f, Vector2.Zero, snareScale, SpriteEffects.None, 0f);
            this.spriteBatch.DrawString(this.font, score.ToString() + " (Max: " + maxScore.ToString() + ")", new Vector2(50, 350), Color.Red, 0.0f, Vector2.Zero, 2.0f, SpriteEffects.None, 0.0f);
            this.spriteBatch.DrawString(this.font, "Hit the drums and maintain the rythm.", new Vector2(100, this.viewPortRectangle.Y + this.viewPortRectangle.Height + 3), Color.Black);
            this.spriteBatch.End();


         }

        private void updateInitialScreen(GameTime gameTime)
        {
            m_gameStartupScreen.Update(gameTime);
            this.colorStream.Position = this.colorSmallPosition;
            this.colorStream.Size = this.minSize;
        }

        private void updateGameOver(GameTime gameTime)
        {
            m_gameOverScreen.Update(gameTime);
        }

        private void updateWinninScreen(GameTime gameTime)
        {
            winningScreenCurrentTime += gameTime.ElapsedGameTime.Milliseconds;
            if (winningScreenCurrentTime > winningScreenMaxTime)
            {
                level = Level.Level2;
            }
            m_winningScreen.Update(gameTime);
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
                case Level.InitialScreen:
                    updateInitialScreen(gameTime);
                    break;

                case Level.Level1:
                    update1(gameTime);
                    break;

                case Level.Level2:
                    updateL2(gameTime);
                    break;

                case Level.WinningScreen:
                    updateWinninScreen(gameTime);
                    break;

                case Level.GameOverScreen:
                    updateGameOver(gameTime);
                    break;

                default:
                    break;
            }

            base.Update(gameTime);
        }

        
        private void drawInitialScreen(GameTime gameTime)
        {
            this.spriteBatch.Begin();
            m_gameStartupScreen.Draw(spriteBatch);
            this.spriteBatch.End();
        }

        private void drawGameOver(GameTime gameTime)
        {
            this.spriteBatch.Begin();
            m_gameOverScreen.Draw(spriteBatch);
            this.spriteBatch.End();
        }

        private void drawWinninScreen(GameTime gameTime)
        {
            this.spriteBatch.Begin();
            m_winningScreen.Draw(spriteBatch);
            this.spriteBatch.End();
        }

        /// <summary>
        /// This method renders the current state.
        /// </summary>
        /// <param name="gameTime">The elapsed game time.</param>
        protected override void Draw(GameTime gameTime)
        {
            // Clear the screen
            GraphicsDevice.Clear(Color.White);

            base.Draw(gameTime);

            switch (level)
            {
                case Level.InitialScreen:
                    drawInitialScreen(gameTime);
                    break;

                case Level.Level1:
                    draw1(gameTime);
                    break;

                case Level.Level2:
                    drawL2(gameTime);
                    break;

                case Level.WinningScreen:
                    drawWinninScreen(gameTime);
                    break;

                case Level.GameOverScreen:
                    drawGameOver(gameTime);
                    break;

                default:
                    break;
            }
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

                if (String.Compare(dataString, m_youLoseMessage) == 0)
                {
                    lock (m_semaphore)
                    {
                        m_isGameOver = true;
                        m_YouLose = true;
                    }
                    Console.WriteLine("Game Over!: {0}", dataString);
                }
                else if (String.Compare(dataString, m_youWinMessage) == 0)
                {
                    lock (m_semaphore)
                    {
                        m_isGameOver = true;
                        m_YouLose = false;
                    }

                    Console.WriteLine("Game Over!: {0}", dataString);
                }
                else if (String.Compare(dataString, m_clapMessage) == 0)
                {
                    Console.WriteLine("Player Action: {0}", dataString);

                    switch (level)
                    {
                        case Level.InitialScreen:
                            handleClapInitScreen();
                            break;

                        case Level.Level1:
                            handleClapLevel1Screen();
                            break;

                        case Level.WinningScreen:
                            handleClapWiningScreen();
                            break;

                        case Level.GameOverScreen:
                            handleClapGameOverScreen();
                            break;
                    }                   
                }
                else
                {
                    Console.WriteLine("Unknown Message: {0}", dataString);
                }
            }

            Console.WriteLine("Total Messages Received: {0}", sMessagesReceivedCount);
        }

        private static void oscServer_ReceiveErrored(object sender, ExceptionEventArgs e)
        {
            Console.WriteLine("Error during reception of packet: {0}", e.Exception.Message);
        }

        private static void handleClapLevel1Screen()
        {
            lock (m_semaphore)
            {
                m_playerClaps = true;
            }
        }

        private static void handleClapInitScreen()
        {
            lock (m_semaphore)
            {
                level = Level.Level1;
            }
        }

        private static void handleClapWiningScreen()
        {
            /*
            lock (m_semaphore)
            {
                XnaBasics.startLevel2();
            }
             * */
        }

        private static void handleClapGameOverScreen()
        {
            /*
            lock (m_semaphore)
            {
                XnaBasics.startGame();
            }
             * */
        }

       private static OscBundle CreateMessageBundle()
        {
            IPEndPoint sourceEndPoint = new IPEndPoint(IPAddress.Loopback, m_OscServerUdpTxPort);
            OscBundle bundle = new OscBundle(sourceEndPoint);

            OscBundle nestedBundle = new OscBundle(sourceEndPoint);
            OscMessage nestedMessage = new OscMessage(sourceEndPoint, TestMethod);
            nestedMessage.AppendNil();
            nestedMessage.Append("/maxtest/hit");
            nestedMessage.Append(10);
 
            bundle.Append(nestedMessage);

            return bundle;
		}
    }
}
