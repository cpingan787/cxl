# @brief: BUSMUST Log Format Converter (Convert *.bbd to *.asc)
# @version: 1.0
# @author: support@busmust.com
import time
import datetime
import sys
import os
import ctypes
import binascii
from sortedcontainers import SortedList #pip install sortedcontainers

#/**
# * @def   BM_DATA_HEADER_SIZE
# * @brief Size (in bytes) of BM Data header, which contains type, routing, length and timestamp.
# */
BM_DATA_HEADER_SIZE = 8

#/**
# * @def   BM_DATA_PAYLOAD_MAX_SIZE
# * @brief Size (in bytes) of BM Data payload, which contains a concrete message in CANFD|LIN|FLEXRAY|... type.
# */
BM_DATA_PAYLOAD_MAX_SIZE = 72

#/**
# * @def   BM_DATA_MAX_SIZE
# * @brief Size (in bytes) of BM Data, which contains a header and payload.
# */
BM_DATA_MAX_SIZE = (BM_DATA_HEADER_SIZE + BM_DATA_PAYLOAD_MAX_SIZE)

#/**
# * @enum  BM_CapabilityTypeDef
# * @brief Busmust Device capability flags, retrieved when enumerating devices using BM_Enumerate().
# */
BM_NONE_CAP = 0x0000        #/**< No capability */
BM_NONE_CAP = 0x0000        #/**< No capability */
BM_LIN_CAP = 0x0001         #/**< The device is capable of handling LIN messages */
BM_CAN_CAP = 0x0002         #/**< The device is capable of handling CAN messages */
BM_CAN_FD_CAP = 0x0004      #/**< The device is capable of handling CANFD (and CAN) messages */
BM_FLEXRAY_CAP = 0x0008     #/**< The device is capable of handling FLEXRAY messages */
BM_MODBUS_CAP = 0x0010      #/**< The device is capable of handling MODBUS messages */
BM_ETHERNET_CAP = 0x0020    #/**< The device is capable of handling ETHERNET messages */
BM_ALL_CAP = 0xFFFF         #/**< Typically used for masking the CAP fields when programming */

#/**
# * @enum  BM_DataTypeTypeDef
# * @brief Busmust data type flags, must be given in BM_DataTypeDef.
# */
BM_UNKNOWN_DATA = 0         #/**< Unknown data type */
BM_LIN_DATA = 1             #/**< LIN message data type */
BM_CAN_FD_DATA = 2          #/**< CAN or CAN-FD message data type (check FDF flag further) */
BM_FLEXRAY_DATA = 3         #/**< Flexray message data type */
BM_MODBUS_DATA = 4          #/**< MODBUS message data type */
BM_ETHERNET_DATA = 5        #/**< Ethernet message data type */
BM_ACK_DATA = 0x8           #/**< ACK from bus, which indicates TXCMPLT event if this is BM_CAN_FD_DATA */

class CTypesStructure(ctypes.Structure):
    def encode(self):
        return ctypes.string_at(ctypes.addressof(self), ctypes.sizeof(self))

    def decode(self, data):
        if type(data) is bytes:
            ctypes.memmove(ctypes.addressof(self), data, min(ctypes.sizeof(self), len(data)))
        else:
            ctypes.memmove(ctypes.addressof(self), data, ctypes.sizeof(self))
        #memmove(addressof(self), data, min(len(data), sizeof(self)))
        return ctypes.sizeof(self)
    
    def read(self, file):
        data = file.read(ctypes.sizeof(self))
        self.decode(data)


#/**
# * @typedef BM_DataHeaderTypeDef
# * @brief   Busmust data header, each BM_DataTypeDef contains a header which indicates payload information.
# */
class BM_DataHeaderTypeDef(CTypesStructure):
    _pack_ = 1
    _fields_ = [
        ('type', ctypes.c_uint16, 4),           #/**< Data type, see BM_DataTypeTypeDef for details. */
        ('flags', ctypes.c_uint16, 4),          #/**< Reserved flags, keep 0 */
        ('dchn', ctypes.c_uint16, 4),           #/**< Destination channel ID, starting from zero, used by TX data to indicate the hardware about the target port. */
        ('schn', ctypes.c_uint16, 4),           #/**< Source channel ID, starting from zero, used by RX data to indicate the application about the source port. */
    ]

    def BM_DataHeaderTypeDef(self, type, flags, dchn, schn):
        self.type = type & 0xF
        self.flags = type & 0xF
        self.dchn = type & 0xF
        self.schn = type & 0xF

#/**
# * @typedef BM_DataTypeDef
# * @brief   Busmust data, abstract structure which holds concrete payload messages of various types (i.e. CAN messages).
# */
class BM_DataTypeDef(CTypesStructure):
    ts64 = 0
    payload = None
    _pack_ = 1
    _fields_ = [
        ('header', BM_DataHeaderTypeDef),                       #/**< data header, see BM_DataHeaderTypeDef for details. */
        ('length', ctypes.c_uint16),                            #/**< length in bytes of the payload only (header excluded). */
        ('timestamp', ctypes.c_uint32),                         #/**< 32-bit device local high precision timestamp in microseconds. */
        #('payload', ctypes.c_ubyte * BM_DATA_PAYLOAD_MAX_SIZE),  #/**< buffer holding concrete message payload (i.e. a CAN message in BM_CanMessageTypeDef format). */
    ]

    def __init__(self):
        pass

    def setCanMessage(self, message):
        self.header.type = BM_CAN_FD_DATA
        self.length = ctypes.sizeof(message)
        ctypes.memmove(ctypes.addressof(self.payload), ctypes.addressof(message), ctypes.sizeof(message))

    def getCanMessage(self):
        message = BM_CanMessageTypeDef()
        ctypes.memmove(ctypes.addressof(message), ctypes.addressof(self.payload), ctypes.sizeof(message))
        return message
    
    def __lt__(self, other):
        return self.ts64 > other.ts64 or ((self.ts64 == other.ts64) and ((self.header.type & BM_ACK_DATA) == 0) and (other.header.type & BM_ACK_DATA) != 0)
 

#/**
# * @typedef BM_MessageIdTypeDef
# * @brief   Busmust CAN Message ID.
# * @note    You could also use a uint32_t, but please take care of memory alignments.
# */
class BM_MessageIdTypeDef(CTypesStructure):
    _pack_ = 1
    _fields_ = [
        ('SID', ctypes.c_uint32, 11),           #/**< Standard ID */
        ('EID', ctypes.c_uint32, 18),           #/**< Extended ID */
        ('SID11', ctypes.c_uint32, 1),          #/**< Reserved */
        ('unimplemented1', ctypes.c_uint32, 2), #/**< Reserved */
    ]

    def getStandardId(self):
        return self.SID

    def getExtendedId(self):
        return (self.SID << 18) | self.EID

    def setStandardId(self, id11):
        self.SID = id11
        self.EID = 0

    def setExtendedId(self, id29):
        self.SID = (id29 >> 18) & 0x7FF
        self.EID = (id29 >> 0) & 0x3FFFF

#/**
# * @typedef BM_TxMessageCtrlTypeDef
# * @brief   Busmust TX CAN Message control fields.
# * @note    The first a few fields (until FDF) are bit compatible with BM_RxMessageCtrlTypeDef.
# */
class BM_TxMessageCtrlTypeDef(CTypesStructure):
    _pack_ = 1
    _fields_ = [
        ('DLC', ctypes.c_uint32, 4),    #/**< CAN message DLC(0-F), note this is not the message length */
        ('IDE', ctypes.c_uint32, 1),    #/**< This message is an extended CAN message */
        ('RTR', ctypes.c_uint32, 1),    #/**< This message is a remote CAN message */
        ('BRS', ctypes.c_uint32, 1),    #/**< This message requires CAN-FD bitrate switching */
        ('FDF', ctypes.c_uint32, 1),    #/**< This message is a CAN-FD CAN message */
        ('ESI', ctypes.c_uint32, 1),    #/**< Reserved for gateways */
        ('SEQ', ctypes.c_uint32, 23),   #/**< Reserved for hardware sync */
    ]

#/**
# * @typedef BM_RxMessageCtrlTypeDef
# * @brief   Busmust RX CAN Message control fields.
# * @note    The first a few fields (until FDF) are bit compatible with BM_TxMessageCtrlTypeDef.
# */
class BM_RxMessageCtrlTypeDef(CTypesStructure):
    _pack_ = 1
    _fields_ = [
        ('DLC', ctypes.c_uint32, 4),                #/**< CAN message DLC(0-F), note this is not the message length */
        ('IDE', ctypes.c_uint32, 1),                #/**< This message is an extended CAN message */
        ('RTR', ctypes.c_uint32, 1),                #/**< This message is a remote CAN message */
        ('BRS', ctypes.c_uint32, 1),                #/**< This message requires CAN-FD bitrate switching */
        ('FDF', ctypes.c_uint32, 1),                #/**< This message is a CAN-FD CAN message */
        ('ESI', ctypes.c_uint32, 1),                #/**< Reserved for gateways */
        ('unimplemented1', ctypes.c_uint32, 2),     #/**< Reserved */
        ('FilterHit', ctypes.c_uint32, 5),          #/**< By wich RX filter the message is accepted */
        ('unimplemented2', ctypes.c_uint32, 16),    #/**< Reserved */
    ]

#/**
# * @typedef BM_MessageCtrlTypeDef
# * @brief   Busmust CAN Message control fields.
# */
class BM_MessageCtrlTypeDef(ctypes.Union):
    _pack_ = 1
    _fields_ = [
        ('tx', BM_TxMessageCtrlTypeDef),                #/**< TX control */
        ('rx', BM_RxMessageCtrlTypeDef),                #/**< RX control */
    ]

#/**
# * @typedef BM_CanMessageTypeDef
# * @brief   Busmust CAN Message concrete type, usually used as payload of BM_DataTypeDef.
# * @note    The total length of this structure is 72B, it support both classic and FD CAN messages.
# */
class BM_CanMessageTypeDef(CTypesStructure):
    _pack_ = 1
    _fields_ = [
        ('mid', BM_MessageIdTypeDef),                   #/**< CAN message ID, see BM_MessageIdTypeDef for details. */
        ('ctrl', BM_MessageCtrlTypeDef),                #/**< CAN message control fields, whether TX or RX is taken depends on the message direction. */
        ('payload', ctypes.c_ubyte * 64),                #/**< CAN message payload */
    ]

    dlc2len = [0, 1, 2, 3, 4, 5, 6, 7, 8, 12, 16, 20, 24, 32, 48, 64]

    def __init__(self, mid=0, dlc=0, ide=0, fdf=0, brs=0, rtr=0, esi=0, payload=None):
        super().__init__()
        self.ctrl.tx.DLC = dlc
        self.ctrl.tx.IDE = ide
        self.ctrl.tx.FDF = fdf
        self.ctrl.tx.BRS = brs
        self.ctrl.tx.RTR = rtr
        self.ctrl.tx.ESI = esi
        self.setMessageId(mid)
        copyLength = min(len(payload), ctypes.ctypes.sizeof(self.payload)) if payload is not None else 0
        if copyLength > 0:
            ctypes.memmove(ctypes.addressof(self.payload), ctypes.addressof(payload), copyLength)

    def setMessageId(self, mid):
        if self.ctrl.tx.IDE:
            self.mid.setExtendedId(mid)
        else:
            self.mid.setStandardId(mid)

    def getMessageId(self):
        if self.ctrl.tx.IDE:
            return self.mid.getExtendedId()
        else:
            return self.mid.getStandardId()
        
    def getPayloadLength(self):
        return BM_CanMessageTypeDef.dlc2len[self.ctrl.rx.DLC]

def write_asc_header(ascf):
    # date Wed Oct 6 2:47 : 18 pm 2021
    now = datetime.datetime.now()
    tstr = now.strftime('%a %b %d %I:%M:%S %p %Y')
    header = 'date %s\n' \
            'base hex  timestamps absolute\n' \
            'no internal events logged\n' \
            '// version 8.1.0\n' % (
        tstr
    )
    ascf.write(header)

def write_asc_line(ascf, timestamp, item, payload):
    if (item.header.type & BM_CAN_FD_DATA) != 0:
        msg = BM_CanMessageTypeDef()
        msg.decode(payload)
        payloadlen = msg.getPayloadLength()
        payloadstr = binascii.b2a_hex(bytes(msg.payload)[:payloadlen], sep=' ').decode()
        flags = 0
        if msg.ctrl.rx.FDF or msg.ctrl.rx.BRS:
            flags |= 0x001000
        if msg.ctrl.rx.BRS:
            flags |= 0x002000
        if (item.header.type & BM_ACK_DATA) != 0:
            flags |= (0x1 << 6)
        if msg.ctrl.rx.RTR:
            flags |= (0x1 << 4)
        # <Time> CANFD <Channel> <Dir> <ID> <SymbolicName> <BRS> <ESI> <DLC> <DataLength> <D1> … <D8> <MessageDuration> <MessageLength> <Flags> <CRC> <BitTimingConfArb> <BitTimingConfData> <BitTimingConfExtArb> <BitTimingConfExtData>
        # 190.032583 CANFD   1 Rx        64e                                   1 0 7  7 06 67 35 01 d8 ce a3    95578  120   303000 980099ea 50a00150 50280150 20001f7e 2000071e
        line = '%.6f CANFD %s %s %x%s %s  %d %d %x %d %s    %x %x %06x %x %x %x %x %x\n' % (
            timestamp * 1e-6,
            item.header.schn + 1,
            'Tx' if ((item.header.type & BM_ACK_DATA)!=0) else 'Rx',
            msg.getMessageId(),
            ('x' if msg.ctrl.rx.IDE else ''),
            '', # Message name
            1 if msg.ctrl.rx.BRS else 0,
            1 if msg.ctrl.rx.ESI else 0,
            msg.ctrl.rx.DLC,
            payloadlen,
            payloadstr,
            0,
            0, 
            flags,
            0, 0, 0, 0, 0
        )
        ascf.write(line)

if __name__ == "__main__":
    print('BUSMUST Log Format Converter (Convert *.bbd to *.asc)')
    bbdurl = sys.argv[1] if len(sys.argv) > 1 else ''
    ascurl = sys.argv[2] if len(sys.argv) > 2 else bbdurl + '.asc'
    if len(bbdurl) == 0:
        print('Usage: python bbd2asc.py <bbdurl> <ascurl>')
        sys.exit(2)

    try:
        length64 = os.path.getsize(bbdurl)
        bbdf = open(bbdurl, 'rb')
        if length64 == 0:
            print('Input file is empty.')
            sys.exit(3)
    except FileNotFoundError as e:
        print('Failed to open input file: ' + bbdurl)
        sys.exit(4)

    try:
        ascf = open(ascurl, 'w+', newline='\n')
    except FileNotFoundError as e:
        print('Failed to open/create output file: ' + ascurl)
        sys.exit(4)

    ts32 = {}
    ts64 = {}
    offset64 = 0
    percent = 0
    t0 = time.time()
    print('Coverting ' + bbdurl + ' to ' + ascurl + ' ...')
    try:
        itemcache = SortedList()
        write_asc_header(ascf)
        while offset64 < length64 or len(itemcache) > 0:
            if offset64 < length64:
                item = BM_DataTypeDef()
                item.read(bbdf)
                if item.timestamp < ts32.get(item.header.schn, 0):
                    ts64[item.header.schn] = ts64.get(item.header.schn, 0) + 0x100000000
                ts32[item.header.schn] = item.timestamp
                ts64[item.header.schn] = (ts64.get(item.header.schn, 0) & 0xFFFFFFFF00000000) + item.timestamp
                if item.length > 0:
                    payload = bbdf.read(item.length)
                item.ts64 = ts64[item.header.schn]
                item.payload = payload
                itemcache.add(item)
                offset64 += ctypes.sizeof(item) + item.length
                newpercent = int(offset64 * 100 / length64)
                if newpercent > percent:
                    print('\x1b[K%d%%' % newpercent, end='\r')
                    percent = newpercent

            if len(itemcache) > 100 or offset64 >= length64:
                d = itemcache.pop(-1)
                write_asc_line(ascf, d.ts64, d, d.payload)
        bbdf.close()
        ascf.close()
    except EOFError:
        pass
    t1 = time.time()
    print('Conversion completed in %d seconds.' % (t1 - t0))