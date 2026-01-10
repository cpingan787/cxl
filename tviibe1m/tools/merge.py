import enum
import os
from struct import unpack

class FileType(enum.Enum):
    FileType_Invalid = 0
    FileType_Boot = 1
    FileType_App1 = 2
    FileType_App2 = 3

app2_flag = False

class McuCY2B75BABMergeFile:
    def __init__(self):
        self.m_error_str = ""

    def error_call_back(self, error_string):
        self.m_error_str = error_string

    def get_error_string(self):
        return self.m_error_str

    def merge_file(self, boot_file_path, app1_file_path, app2_file_path, merge_file_path):
        last_line = ""
        if not boot_file_path:
            self.error_call_back("Boot file path error")
            return False
        if not app1_file_path and not app2_file_path:
            self.error_call_back("App file path error")
            return False

        with open(merge_file_path, 'w', newline='\r\n', encoding='utf-8') as merge_file:
            with open(boot_file_path, 'r', newline='\r\n', encoding='utf-8') as boot_file:
                for line in boot_file:
                    line_header = line[:2]
                    if line_header == "S3":
                        merge_file.write(line)
                    elif line_header == "S0":
                        merge_file.write(line)
                    elif line_header == "S7":
                        last_line = line

            if app1_file_path:
                with open(app1_file_path, 'r', newline='\r\n', encoding='utf-8') as app1_file:
                    for line in app1_file:
                        line_header = line[:2]
                        if line_header == "S3":
                            merge_file.write(line)
                        elif line_header == "S0":
                            pass
                        elif line_header == "S7":
                            pass
            with open(boot_file_path, 'r', newline='\r\n', encoding='utf-8') as boot_file:
                for line in boot_file:
                    line_header = line[:2]
                    if line_header == "S3":
                        str_addr = line[4:12]
                        addr = int(str_addr, 16)
                        addr += 0x78000
                        str_len = line[2:4]
                        length = int(str_len, 16)
                        data = line[12:-2]  # 去掉校验和和结尾字符
                        new_line = f"S3{str_len}{addr:08X}{data}"
                        checksum = self.srec_format_checksum(new_line[2:-2])
                        new_line = f"{new_line[:-2]}{checksum:02X}\r\n"
                        merge_file.write(new_line)

            if app2_file_path:
                with open(app2_file_path, 'r', newline='\r\n', encoding='utf-8') as app2_file:
                    for line in app2_file:
                        line_header = line[:2]
                        if line_header == "S3":
                            str_addr = line[4:12]
                            addr = int(str_addr, 16)
                            addr += 0x78000
                            str_len = line[2:4]
                            length = int(str_len, 16)
                            data = line[12:-2]  # 去掉校验和和结尾字符
                            new_line = f"S3{str_len}{addr:08X}{data}"
                            checksum = self.srec_format_checksum(new_line[2:-2])
                            new_line = f"{new_line[:-2]}{checksum:02X}\r\n"
                            merge_file.write(new_line)

            work_flash_address = 0x14000000
            line = "S31514000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00"
            while work_flash_address < 0x14018000:
                if work_flash_address == 0x14017000:
                    if not app1_file_path:
                        merge_file.write("S31514017000BBBBBBBBFFFFFFFFFFFFFFFFFFFFFFFF85\r\n")
                    else:
                        merge_file.write("S31514017000AAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFC9\r\n")
                    work_flash_address += 0x10
                    continue
                elif work_flash_address == 0x14017100:
                    if app1_file_path:
                        merge_file.write("S31514017100A55AAA55FFFFFFFFFFFFFFFFFFFFFFFF72\r\n")
                        work_flash_address += 0x10
                        continue
                elif work_flash_address == 0x14017200:
                    if app2_file_path:
                        merge_file.write("S31514017200A55AAA55FFFFFFFFFFFFFFFFFFFFFFFF71\r\n")
                        work_flash_address += 0x10
                        continue
                work_flash_str = line[12:44]
                work_flash_str = f"{line[2:4]}{work_flash_address:08X}{work_flash_str}"
                checksum = self.srec_format_checksum(work_flash_str)
                new_line = f"S3{work_flash_str}{checksum:02X}\r\n"
                merge_file.write(new_line)
                work_flash_address += 0x10

            merge_file.write(last_line)
            return True

    @staticmethod
    def hex_to_bytes(hex_str):
        # 将十六进制字符串转换为字节串
        return bytes.fromhex(hex_str)

    @staticmethod
    def srec_format_checksum(data):
        # 计算S-Record格式的校验和
        # 将数据部分转换为字节串并计算校验和
        try:
            packed_data = McuCY2B75BABMergeFile.hex_to_bytes(data)
            checksum = 0
            checksum = sum(packed_data) & 0xFF
            return (0xFF - checksum) & 0xFF
        except ValueError as e:
            raise ValueError(f"Error unpacking data: {e}")

# 使用示例
merger = McuCY2B75BABMergeFile()
success = merger.merge_file('cm0plus.srec', 'APP_CM4_Vxxx.srec', 'APP_CM4_Vxxx.srec', 'merged.srec')
if not success:
    print(merger.get_error_string())