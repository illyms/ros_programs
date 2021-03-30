#include "anchor_serial/anchor_talker.h"

AnchorTalker::AnchorTalker() : sp(ios)
{
    ROS_INFO("AnchorTalker Constructed.");
}

void AnchorTalker::OpenPort(const char * portname)
{
    boost::system::error_code ec;
    sp.open(portname,ec);
    if(ec)
    {
        return;
    }
}

//AnchorTalker::AnchorTalker(const char * portname): sp(ios, portname)
AnchorTalker::AnchorTalker(const char * portname): ios(),sp(ios)
{
   // sp=new serial_port(ios,portname);
}

void AnchorTalker::ReadSerial()
{

}

void AnchorTalker::Tryports()
{
    OpenPort("/dev/ttyACM0");
    OpenPort("/dev/ttyACM1");
    OpenPort("/dev/ttyACM2");
    OpenPort("/dev/ttyACM3");
    OpenPort("/dev/ttyACM4");
    OpenPort("/dev/ttyACM5");
    OpenPort("/dev/ttyACM6");
    OpenPort("/dev/ttyACM7");
    OpenPort("/dev/ttyACM8");
    OpenPort("/dev/ttyACM9");
}
void AnchorTalker::SerialConfig()
{
    sp.set_option(serial_port::baud_rate(115200));
}
bool AnchorTalker::IsOpen()
{
    return sp.is_open();
}
