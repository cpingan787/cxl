#!/usr/bin/env python

from __future__ import print_function

import can
from can.interfaces.bmcan import BmCanBus
from can.interfaces.bmcan import bmapi
import ctypes

UDS_REQUEST_ID = 0x791
UDS_RESPONSE_ID = 0x799

if __name__ == "__main__":
    #bus = can.interface.Bus(bustype='bmcan', channel=0, bitrate=500000, data_bitrate=2000000, tres=True)
    # Custruct a BmCanBus object directly using its constructor, please add the following line before calling the constructor:
    # from can.interfaces.bmcan import BmCanBus
    bus = can.interface.Bus(bustype='bmcan', channel=0, bitrate=500000, data_bitrate=2000000, tres=True, fd=False)
    bus.config_isotp(tester_msg_id=UDS_REQUEST_ID, ecu_msg_id=UDS_RESPONSE_ID, mode=bmapi.BM_ISOTP_NORMAL_ECU, fd=False, dlc=8, functional=True)
    print("ECU UDS simulator started on %s, listening on 0x7DF and 0x%x ..." % (str(bus), UDS_REQUEST_ID))

    while True:
        request = bus.receive_isotp()
        print("UDS Request:", request)
        response = None
        if request[0] == 0x10:
            p2_server_max = 1000 #ms
            p2_star_server_max = 100 #10ms
            response = bytes([0x50, request[1], p2_server_max // 256, p2_server_max % 256, p2_star_server_max // 256, p2_star_server_max % 256])
        elif request[0] == 0x27:
            if request[1] & 0x1: # Request seed
                response = bytes([0x67, request[1], 0x11, 0x22, 0x33, 0x44])
            else: # Send key
                response = bytes([0x67, request[1]])
        elif request[0] == 0x22:
            response = bytes([0x62, request[1], request[2], 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF])
        elif request[0] == 0x2E:
            response = bytes([0x6E, request[1], request[2]])
        elif request[0] == 0x34:
            response = bytes([0x74, 0x40, 0x00, 0x00, 0x08, 0x00])
        else:
            l = len(request)
            if l != 1:
                response = bytes([request[0] + 0x40, request[1]])
            else:
                response = bytes([request[0] + 0x40])
        print("UDS Response:", response)
        if response:
            print('Write %s to channel %s' % (str(response), str(bus.channel_info)))
            bus.send_isotp(response, timeout=5.0)
