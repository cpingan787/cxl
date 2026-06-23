#!/usr/bin/env python

# This example demonstrates config/read/write operations over Ethernet on BM-GWR devices.

from __future__ import print_function

import can
from can.bus import BusState
from can.interfaces.bmcan import BmCanBus
import time
import ctypes

def send_one():
    msg = can.Message(arbitration_id=0xc0ffee,
                      data=[0, 25, 0, 1, 3, 1, 4, 1],
                      is_extended_id=True)

    try:
        bus.send(msg, timeout=None)
        print("Message sent on {}".format(bus.channel_info))
    except can.CanError:
        print("Message NOT sent")

def receive_all():
    print('Waiting for RX messages, press Ctrl+C to break.')
    bus.state = BusState.ACTIVE  # or BusState.PASSIVE

    try:
        while True:
            msg = bus.recv(1)
            if msg is not None:
                print(msg)
    except KeyboardInterrupt:
        pass

def receive_one():
    bus.state = BusState.ACTIVE  # or BusState.PASSIVE

    try:
        msg = bus.recv(1)
        if msg is not None:
            print(msg)
    except KeyboardInterrupt:
        pass


if __name__ == "__main__":
    #bus = can.interface.Bus(bustype='bmcan', channel=0, bitrate=500000, data_bitrate=2000000, tres=True)
    # Custruct a BmCanBus object directly using its constructor, please add the following line before calling the constructor:
    # from can.interfaces.bmcan import BmCanBus
    # Give 'remote_ip' parameter with IP string to enumerate remote channels.
    bus = BmCanBus(remote_ip="192.168.41.255", channel=0, bitrate=500000, data_bitrate=2000000, tres=True)
    print("Remote CAN bus connected:" + str(bus))
    
    # Example 0: Call BMAPI advanced functions directly (if necessary, as you wish)
    # BM_SetTerminalRegister: Enable 120Ohm terminal resistor 
    bus._bmapi.BM_SetTerminalRegister(bus._handle, bus._bmapi.BM_TRESISTOR_120)
    # BM_SetCanMode: Set to external loopback mode so that the device tests itself
    bus._bmapi.BM_SetCanMode(bus._handle, bus._bmapi.BM_CAN_EXTERNAL_LOOPBACK_MODE)
    # We'd better sleep a bit after CAN mode is changed
    time.sleep(0.1)

    # Example 1: Basic TX/RX using python-can standard API: bus.send & bus.recv
    print("Transmit and receive single message in loopback mode.")
    send_one()
    receive_one()

    # Example 2: Set hardware TX task to send messages periodically
    print("Set hardware tx task.")
    txtask = bus._bmapi.BM_TxTaskTypeDef()
    dlc2len = [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 12, 16, 20, 24, 32, 48, 64 ]
    txtask.version = 1
    txtask.type = bus._bmapi.BM_TXTASK_INCDATA
    txtask.cycle = 1000
    txtask.nrounds = 0xFFFF
    txtask.nmessages = 1
    txtask.pattern.incdata.startbit = 0
    txtask.pattern.incdata.nbits = 32
    txtask.pattern.incdata.step = 1
    txtask.pattern.incdata.min = 0
    txtask.pattern.incdata.max = 0xFFFFFFFF
    txtask.pattern.incdata.format = 0x80 #/* Intel little edian format */
    txtask.id = 0x123
    txtask.length = dlc2len[8]
    txtask.flags = 0 #bus._bmapi.BM_CAN_MESSAGE_FLAGS_FDF | bus._bmapi.BM_CAN_MESSAGE_FLAGS_BRS
    txtask.payload[4] = 0x44
    txtask.payload[5] = 0x55
    txtask.payload[6] = 0x66
    txtask.payload[7] = 0x77
    if bus._bmapi.BM_SetTxTasks(bus._handle, ctypes.byref(txtask), 1) != bus._bmapi.BM_ERROR_OK:
        print("ERROR: Failed to set TXTASK configuration.\n")

    # Example 3: Configure offline logging options
    print("Set offline logging.")
    logging = bus._bmapi.BM_LoggingConfigTypeDef()
    logging.version = 1
    logging.mode = bus._bmapi.BM_STORAGE_ALWAYS_ON
    logging.format = bus._bmapi.BM_STORAGE_ASC_FORMAT
    logging.channels = 0xFFFF
    logging.direction = bus._bmapi.BM_STORAGE_DIRECTION_ALL
    logging.path.mode = bus._bmapi.BM_STORAGE_INDEX_PATH
    logging.segmentation.createNewFileOnStart = 1
    logging.segmentation.overwriteOldFileOnFull = 1
    if bus._bmapi.BM_SetLogging(bus._handle, ctypes.byref(logging)) != bus._bmapi.BM_ERROR_OK:
        print("ERROR: Failed to set LOGGING configuration.\n")
	
    # Example 4: Save all configuration to offline storage media
    print("Save all configuration.")
    if bus._bmapi.BM_SaveConfig(bus._handle, 0xFFFFFFFF) != bus._bmapi.BM_ERROR_OK:
        print("Failed to save OFFLINE configuration.\n")

    receive_all()

    print('Exit now.')
