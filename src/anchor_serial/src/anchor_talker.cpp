#include "anchor_talker.h"

using namespace boost::asio;

void AnchorTalker::ReadSerial()
{

}
void AnchorTalker::SerialInit()
{
    sp.set_option(serial_port::baud_rate(115200));
}