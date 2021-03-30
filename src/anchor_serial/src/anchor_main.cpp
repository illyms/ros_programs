#include "anchor_serial/anchor_talker.h"

using namespace ros;
int main (int argc, char **argv)
{ 
    ros::init(argc,argv,"anchor_talker");
    ros::NodeHandle n;
    //AnchorTalker talker("/dev/ttyACM0");
    AnchorTalker talker;
    while(1)
    {   
        talker.Tryports();
        if(talker.IsOpen()) break;
        ROS_INFO("No available port found.");
        ROS_INFO("Making another attempt 5s later.");
        sleep(5);
    }
    ROS_INFO("Port Opened.");
   // while(1)
    {
        talker.readSpeed();
    }
    ros::spin();
    return 0;
}
