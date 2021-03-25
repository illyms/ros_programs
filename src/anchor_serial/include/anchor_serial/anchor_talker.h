#ifndef ANCHOR_TALKER_H
#define ANCHOR_TALKER_H

#include <ros/ros.h>
#include <boost/asio.hpp>
using boost::asio::serial_port;
using boost::asio::io_service;

class AnchorTalker
{
    private:
    char mask;
    int range_t4_to_a0,range_t4_to_a1,range_t4_to_a2,range_a0_to_a1,range_a0_to_a2,range_a1_to_a2;
    int x_a0,y_a0,x_a1,y_a1,x_a2,y_a2,x_t4,y_t4;
    boost::asio::serial_port *sp;
    io_service ios;
    public:
    AnchorTalker(const char * portname);
    void SerialConfig();
    void ReadSerial();
    void CalculateTagCoordinate();
};
#endif