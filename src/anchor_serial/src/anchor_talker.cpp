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

//依次尝试打开ACM0到ACM9
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

//
void AnchorTalker::SerialConfig()
{
    sp.set_option(serial_port::baud_rate(115200));
    sp.set_option(serial_port::flow_control(serial_port::flow_control::none));
    sp.set_option(serial_port::parity(serial_port::parity::none));
    sp.set_option(serial_port::stop_bits(serial_port::stop_bits::one));
    sp.set_option(serial_port::character_size(8));
}
bool AnchorTalker::IsOpen()
{
    return sp.is_open();
}

void AnchorTalker::readSpeed()
{
    string out;
    unsigned char checkSum;
    char buf[20]={0};
    boost::system::error_code ec;
    //=========================================================
    //此段代码可以读数据的结尾，进而来进行读取数据的头部
    try
    { 
        boost::asio::streambuf response;
        boost::asio::read_until(sp, response, "a4:0",ec);   
        copy(istream_iterator<unsigned char>(istream(&response)>>noskipws),
        istream_iterator<unsigned char>(),
        buf); 
    }  
    catch(boost::system::system_error &ec)
    {
        ROS_INFO("read_until error");
    } 
    out = buf;
    ROS_INFO(buf);
    return;
}

