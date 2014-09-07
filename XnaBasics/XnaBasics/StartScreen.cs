﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;


namespace Microsoft.Samples.Kinect.XnaBasics
{
    class StartScreen
    {
        private Texture2D texture;
        private XnaBasics game;
        private KeyboardState lastState;

        public StartScreen(XnaBasics game)
        {
            this.game = game;
            texture = game.Content.Load<Texture2D>("joker-clapping");
            lastState = Keyboard.GetState();
        }

        public void Update(GameTime gameTime)
        {
            KeyboardState keyboardState = Keyboard.GetState();

            if (keyboardState.IsKeyDown(Keys.Enter) && lastState.IsKeyUp(Keys.Enter))
            {
                game.startGame();
                Console.WriteLine("Enter Key pressed!");
            }
            else if (keyboardState.IsKeyDown(Keys.Escape) && lastState.IsKeyUp(Keys.Escape))
            {
                game.Exit();
            }

            lastState = keyboardState;
        }

        public void Draw(SpriteBatch spriteBatch)
        {
            if (texture != null)
            {
                spriteBatch.Draw(texture, Vector2.Zero, null, Color.White, 0f, Vector2.Zero, 1.0f, SpriteEffects.None, 0f);
            }
        }
    }
}
