namespace kinectTracker
{
    using System;
    using System.Linq;
    using Microsoft.Kinect;
    using Microsoft.Kinect.Toolkit;
    using Microsoft.Kinect.Toolkit.FaceTracking;
    using System.Threading;
    using System.Net;
    using System.Collections.Generic;
    using System.Drawing;
    using Bespoke.Common.Osc;
    using Transmitter;

    internal class Program
    {
        public static readonly int Port = 5103;

        private static void Main(string[] args)
        {

            // Find the first connected sensor
            KinectSensor sensor = KinectSensor.KinectSensors.Where(s => s.Status == KinectStatus.Connected).FirstOrDefault();
            if (sensor == null)
            {
                Console.WriteLine("No Kinect sensor found!");
                Console.ReadLine();
                return;
            }

            // Create object that will track skeletons using the sensor
            Tracker tracker = new Tracker(sensor);
            Console.WriteLine("Tracker created");

            // Start the sensor
            sensor.Start();
            Console.WriteLine("Sensor started");

            // Run until the user presses 'q' or 'Q' on the keyboard
            while (Char.ToLowerInvariant(Console.ReadKey().KeyChar) != 'q') {}

            // Stop the sensor
            sensor.Stop();
            kinectTracker.Tracker.transmitter.Stop();
        }

        public static OscBundle CreateBundle(float X, float Y, float Z)
        {
            IPEndPoint sourceEndPoint = new IPEndPoint(IPAddress.Loopback, Port);
            OscBundle bundle = new OscBundle(sourceEndPoint);

            OscMessage message = new OscMessage(sourceEndPoint, "/handright/");
            message.Append(X);
            message.Append(Y);
            message.Append(Z);
            bundle.Append(message);

            return bundle;
        }

    }

    

    internal class Tracker
    {
        private Skeleton[] skeletons = null;
        public static ITransmitter transmitter = new UdpTransmitter();

        public Tracker(KinectSensor sensor)
        {
            // Connect the skeleton frame handler and enable skeleton tracking
            sensor.SkeletonStream.TrackingMode = SkeletonTrackingMode.Seated;
            sensor.SkeletonFrameReady += SensorSkeletonFrameReady;
            sensor.SkeletonStream.Enable();
            Console.WriteLine("Inside tracker");
        }

        private void SensorSkeletonFrameReady(object sender, SkeletonFrameReadyEventArgs e)
        {
            // Access the skeleton frame
            using (SkeletonFrame skeletonFrame = e.OpenSkeletonFrame())
            {
                //Console.WriteLine("Get in position.");
                //Console.ReadLine();
                if (skeletonFrame != null)
                {
                    if (this.skeletons == null)
                    {
                        // Allocate array of skeletons
                        this.skeletons = new Skeleton[skeletonFrame.SkeletonArrayLength];
                        Console.WriteLine("Got a skeleton.");
                    }

                    // Copy skeletons from this frame
                    skeletonFrame.CopySkeletonDataTo(this.skeletons);

                    // Find first tracked skeleton, if any
                    Skeleton skeleton = this.skeletons.Where(s => s.TrackingState == SkeletonTrackingState.Tracked).FirstOrDefault();

                    if (skeleton != null)
                    {
                        // Obtain the left knee joint; if tracked, print its position
                        Joint j = skeleton.Joints[JointType.HandRight];
                        

                        if (j.TrackingState == JointTrackingState.Tracked)
                        {
                            Console.WriteLine("Left hand: " + j.Position.X + ", " + j.Position.Y + ", " + j.Position.Z);
                            
                            OscBundle bundle = kinectTracker.Program.CreateBundle(j.Position.X, j.Position.Y, j.Position.Z);
                            transmitter.Start(bundle);
                            
                        }
                    }
                }
            }
        }
    }
}
