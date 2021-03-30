#ifndef ANCHOR_TALKER_H
#define ANCHOR_TALKER_H

#include <ros/ros.h>
#include <boost/asio.hpp>
#include <unistd.h>
using boost::asio::serial_port;
using boost::asio::io_service;
using boost::system::error_code;

class Test_Class
{
    private:
    const char * portname;
    public:
    Test_Class(const char* p) { portname=p; };
};

class AnchorTalker
{
    private:
    char mask;
    int range_t4_to_a0,range_t4_to_a1,range_t4_to_a2,range_a0_to_a1,range_a0_to_a2,range_a1_to_a2;
    int x_a0,y_a0,x_a1,y_a1,x_a2,y_a2,x_t4,y_t4;
    //Test_Class test;
    boost::asio::io_service ios;
    boost::asio::serial_port sp;
    public:
    void OpenPort(const char * portname);
    void Tryports();
    AnchorTalker();
    AnchorTalker(const char * portname);
    void SerialConfig();
    void ReadSerial();
    void CalculateTagCoordinate();
    bool IsOpen();
};

#endif