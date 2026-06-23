from can.interface import Bus
from can.message import Message
import time

bus = Bus(bustype='bmcan', channel=0, bitrate=500000, data_bitrate=2000000, tres=True)

msg = Message(arbitration_id=0x29E,
              data=bytes([0x80, 0x10, 0, 0, 0, 0, 0, 0]),
              is_extended_id=False, is_fd=False)

txtask = bus.send_periodic(msg, 0.01)
print('Start sending')
while True:
    try:
        time.sleep(1)
    except KeyboardInterrupt:
        txtask.stop()
        print('Stop sending')
        break
