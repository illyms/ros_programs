import serial
from time import sleep
for i in range(10):
    try:
        ser=serial.Serial(("/dev/ttyACM")+str(i),115200)
    except serial.serialutil.SerialException:
        print ('ACM not found')
    else:
        while True:
            try:
                recieved_data=ser.read()
            except NameError:
                print('ACM not found')
                break
            except serial.serialutil.SerialException:
                print('Device disconnected')
                break
            sleep(0.01)
            data_left = ser.inWaiting()
            recieved_data += ser.read(data_left)
            print(recieved_data)
