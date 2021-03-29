#include "anchor_serial/anchor_talker.h"
using boost::system::error_code;

//AnchorTalker::AnchorTalker() : test(1)
//{

//}

void AnchorTalker::TrySerialOpen(const char * portname)
{
 //   try
  //  {
  //      sp.open(portname,ec);
  //  }
  //  catch(exception& err)
    {

    }
}

//AnchorTalker::AnchorTalker(const char * portname): sp(ios, portname)
AnchorTalker::AnchorTalker(const char * portname): sp(ios)
{
   // sp=new serial_port(ios,portname);
}

void AnchorTalker::ReadSerial()
{

}
void AnchorTalker::SerialConfig()
{
    //sp.set_option(serial_port::baud_rate(115200));
}
