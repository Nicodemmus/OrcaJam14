using System;
using System.Threading;
using System.Net;
using Bespoke.Common;
using Bespoke.Common.Osc;

namespace Microsoft.Samples.Kinect.XnaBasics
{
    public class UdpTransmitter : ITransmitter
    {
        public void Start(OscPacket packet)
        {
            Assert.ParamIsNotNull(packet);

            mPacket = packet;
            mSendMessages = true;

            mTransmitterThread = new Thread(RunWorker);
            mTransmitterThread.Start();
        }

        public void Stop()
        {
            mSendMessages = false;
            mTransmitterThread.Join();
        }

        private void RunWorker()
        {
            Boolean collide;
            try
            {
                while (mSendMessages)
                {
                    Thread.Sleep(50);
                    lock (XnaBasics.m_semaphore)
                    {
                        collide = XnaBasics.m_playerCollides;
                    }
                    if (collide == true)
                    {

                        mPacket.Send(Destination);

                        mTransmissionCount++;
                    }
                    // NOTE: do not release the mutex here since it will be released
                    // by XnaBasics
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        private static readonly IPEndPoint Destination = new IPEndPoint(IPAddress.Loopback, XnaBasics.m_OscServerUdpTxPort);

        private volatile bool mSendMessages;
        private Thread mTransmitterThread;
        private OscPacket mPacket;
        private int mTransmissionCount;
    }
}
