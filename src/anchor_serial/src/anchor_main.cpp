#include "anchor_serial/anchor_talker.h"

using namespace ros;
int main (int argc, char **argv)
{
    ros::init(argc,argv,"anchor_talker");
    ros::NodeHandle n;
    AnchorTalker talker("/dev/ttyACM0");
    //talker.SerialConfig();
    ROS_INFO("anchor talker");
    ros::spin();
    return 0;
}
