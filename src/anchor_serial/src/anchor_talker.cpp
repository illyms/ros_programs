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
        string err_mes=portname;
        err_mes = "Open" + err_mes +"failed.\r\n";
        ROS_INFO_STREAM(err_mes);
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
    ios.run();
}
bool AnchorTalker::IsOpen()
{
    return sp.is_open();
}

void AnchorTalker::readSpeed()
{
    string out;
    string Mask;
    string Range;
    string delimiter = " ";
    unsigned char checkSum;
    char buf[6500]={0};
    boost::system::error_code ec;
    //=========================================================
    //此段代码可以读数据的结尾，进而来进行读取数据的头部
    try
    { 
        boost::asio::streambuf response;
        //boost::asio::async_read(sp,boost::asio::buffer(buf),boost::bind(&AnchorTalker::handle_read,this,buf,_1,_2));
        //boost::asio::async_read_until(sp,response,"\r\n",boost::bind(&AnchorTalker::handle_read,this,buf,_1,_2));
        //boost::asio::read_until(sp, response, "\r\n",ec); 
        boost::asio::read(sp,response,ec);
        out = copy(istream_iterator<char>(istream(&response)>>noskipws),
        istream_iterator<char>(),
        buf); 
    }  
    catch(boost::system::system_error &ec)
    {
        ROS_INFO("read_until error");
    } 
    out = buf;
    if(out == "") return;
    name = out.substr(0,out.find(delimiter));
    out=out.erase(0,out.find(delimiter)+delimiter.length());
   
   Mask =out.substr(0,out.find(delimiter));
   mask = stoi(Mask,nullptr,10);
    out=out.erase(0,out.find(delimiter)+delimiter.length());
    Range = out.substr(0,out.find(delimiter));
    //range_t4_to_a0 = stoi(out.substr(0,out.find(delimiter)));
    // out=out.erase(0,out.find(delimiter)+delimiter.length());
    // name = out.substr(0,out.find(delimiter));
    // out=out.erase(0,out.find(delimiter)+delimiter.length());
    // name = out.substr(0,out.find(delimiter));
    // out=out.erase(0,out.find(delimiter)+delimiter.length());
    // name = out.substr(0,out.find(delimiter));
    // out=out.erase(0,out.find(delimiter)+delimiter.length());
    //ROS_INFO(buf);
    ROS_INFO_STREAM(name);
    ROS_INFO("\r\n");
    ROS_INFO("%d\r\n",mask);
    //ROS_INFO_STREAM(Mask);
    ROS_INFO("\r\n");
    ROS_INFO_STREAM(Range);
    ROS_INFO("\r\n");
    //ROS_INFO("%c\r\n",mask);
    //ROS_INFO("%d\r\n",range_t4_to_a0);
    return;
}

void AnchorTalker::handle_read( char buf[], boost::system::error_code ec,  
    std::size_t bytes_transferred )  
{  
    //cout << "\nhandle_read: ";  
    //cout.write(buf, bytes_transferred);  
    ROS_INFO("callback called.\r\n");
}  

