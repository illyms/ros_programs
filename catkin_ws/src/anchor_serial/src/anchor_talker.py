import serial
from time import sleep
ser=serial.Serial("/dev/ttyACM0",115200)
while True:
    recieved_data=ser.read()
    print(recieved_data)
    #aaaaaaaa