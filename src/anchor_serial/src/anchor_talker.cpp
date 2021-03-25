#include "anchor_serial/anchor_talker.h"

AnchorTalker::AnchorTalker()
{
    
}

AnchorTalker::AnchorTalker(const char * portname)
{
    sp=new serial_port(ios,portname);
}

void AnchorTalker::ReadSerial()
{

}
void AnchorTalker::SerialConfig()
{
    sp->set_option(serial_port::baud_rate(115200));
}
