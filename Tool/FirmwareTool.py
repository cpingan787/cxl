#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import struct
import tkinter as tk
from tkinter import filedialog, messagebox

# ================== 全局配置 ==================
FLASH_BASE = 0x00000000
FLASH_SIZE = 2 * 1024 * 1024   # 2MB

HEADER_OFFSET  = 0x2000
MARKER_OFFSET  = 0x4000
MARKER_VALUE   = 0x55AA5AA5     # 小端写入: A5 5A AA 55

# ============ 拖拽 ============
HAS_DND = False
try:
    from tkinterdnd2 import DND_FILES, TkinterDnD  # pip install tkinterdnd2
    HAS_DND = True
except Exception:
    HAS_DND = False

# ============ AES-128 ECB 单块 ============
Sbox=[0x63,0x7c,0x77,0x7b,0xf2,0x6b,0x6f,0xc5,0x30,0x01,0x67,0x2b,0xfe,0xd7,0xab,0x76,
0xca,0x82,0xc9,0x7d,0xfa,0x59,0x47,0xf0,0xad,0xd4,0xa2,0xaf,0x9c,0xa4,0x72,0xc0,0xb7,0xfd,
0x93,0x26,0x36,0x3f,0xf7,0xcc,0x34,0xa5,0xe5,0xf1,0x71,0xd8,0x31,0x15,0x04,0xc7,0x23,0xc3,
0x18,0x96,0x05,0x9a,0x07,0x12,0x80,0xe2,0xeb,0x27,0xb2,0x75,0x09,0x83,0x2c,0x1a,0x1b,0x6e,
0x5a,0xa0,0x52,0x3b,0xd6,0xb3,0x29,0xe3,0x2f,0x84,0x53,0xd1,0x00,0xed,0x20,0xfc,0xb1,0x5b,
0x6a,0xcb,0xbe,0x39,0x4a,0x4c,0x58,0xcf,0xd0,0xef,0xaa,0xfb,0x43,0x4d,0x33,0x85,0x45,0xf9,
0x02,0x7f,0x50,0x3c,0x9f,0xa8,0x51,0xa3,0x40,0x8f,0x92,0x9d,0x38,0xf5,0xbc,0xb6,0xda,0x21,
0x10,0xff,0xf3,0xd2,0xcd,0x0c,0x13,0xec,0x5f,0x97,0x44,0x17,0xc4,0xa7,0x7e,0x3d,0x64,0x5d,
0x19,0x73,0x60,0x81,0x4f,0xdc,0x22,0x2a,0x90,0x88,0x46,0xee,0xb8,0x14,0xde,0x5e,0x0b,0xdb,
0xe0,0x32,0x3a,0x0a,0x49,0x06,0x24,0x5c,0xc2,0xd3,0xac,0x62,0x91,0x95,0xe4,0x79,0xe7,0xc8,
0x37,0x6d,0x8d,0xd5,0x4e,0xa9,0x6c,0x56,0xf4,0xea,0x65,0x7a,0xae,0x08,0xba,0x78,0x25,0x2e,
0x1c,0xa6,0xb4,0xc6,0xe8,0xdd,0x74,0x1f,0x4b,0xbd,0x8b,0x8a,0x70,0x3e,0xb5,0x66,0x48,0x03,
0xf6,0x0e,0x61,0x35,0x57,0xb9,0x86,0xc1,0x1d,0x9e,0xe1,0xf8,0x98,0x11,0x69,0xd9,0x8e,0x94,
0x9b,0x1e,0x87,0xe9,0xce,0x55,0x28,0xdf,0x8c,0xa1,0x89,0x0d,0xbf,0xe6,0x42,0x68,0x41,0x99,
0x2d,0x0f,0xb0,0x54,0xbb,0x16]
Rcon=[0x00,0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80,0x1B,0x36]
def _sub_word(w): return ((Sbox[(w>>24)&0xFF]<<24)|(Sbox[(w>>16)&0xFF]<<16)|(Sbox[(w>>8)&0xFF]<<8)|Sbox[w&0xFF])
def _rot_word(w): return ((w<<8)&0xFFFFFFFF)|((w>>24)&0xFF)
def aes128_expand_key(k: bytes):
    w=[0]*44
    for i in range(4): w[i]=struct.unpack(">I",k[4*i:4*i+4])[0]
    for i in range(4,44):
        t=w[i-1]
        if i%4==0: t=_sub_word(_rot_word(t))^(Rcon[i//4]<<24)
        w[i]=w[i-4]^t
    return [b''.join(struct.pack(">I",w[4*r+j]) for j in range(4)) for r in range(11)]
def _add_rk(s,rk): return bytes(a^b for a,b in zip(s,rk))
def _xt(a): return ((a<<1)^0x1B)&0xFF if a&0x80 else (a<<1)&0xFF
def _mul(a,b):
    p=0
    for _ in range(8):
        if b&1: p^=a
        a=_xt(a); b>>=1
    return p
def _sub_bytes(s): return bytes(Sbox[b] for b in s)
def _shift_rows(s):
    s=list(s); idx=lambda r,c: c*4+r
    out=[0]*16
    for r in range(4):
        for c in range(4):
            out[idx(r,c)] = s[idx(r,(c+r)%4)]
    return bytes(out)
def _mix_columns(s):
    o=bytearray(16)
    for c in range(4):
        i=c*4; a0,a1,a2,a3=s[i:i+4]
        o[i+0]=_mul(a0,2)^_mul(a1,3)^a2^a3
        o[i+1]=a0^_mul(a1,2)^_mul(a2,3)^a3
        o[i+2]=a0^a1^_mul(a2,2)^_mul(a3,3)
        o[i+3]=_mul(a0,3)^a1^a2^_mul(a3,2)
    return bytes(o)
def aes128_ecb_encrypt_block(p16: bytes, k16: bytes):
    rk=aes128_expand_key(k16)
    s=_add_rk(p16,rk[0])
    for r in range(1,10):
        s=_sub_bytes(s); s=_shift_rows(s); s=_mix_columns(s); s=_add_rk(s,rk[r])
    s=_sub_bytes(s); s=_shift_rows(s); s=_add_rk(s,rk[10]); return s

# ============ 与 MCU 一致 CRC32 ============
def _bitrev(x: int, bw: int) -> int:
    v = 0
    for i in range(bw):
        if x & 1: v |= 1 << (bw - 1 - i)
        x >>= 1
    return v
def _crc32_table_from_poly(poly: int):
    poly = _bitrev(poly, 32)  # 0x04C11DB7 -> 0xEDB88320
    table = [0]*256
    for i in range(256):
        c=i
        for _ in range(8):
            c = (poly ^ (c >> 1)) & 0xFFFFFFFF if (c & 1) else ((c >> 1) & 0xFFFFFFFF)
        table[i]=c
    return table
_CRC32_TABLE=_crc32_table_from_poly(0x04C11DB7)
def crc32_reflected(data: bytes, init: int = 0xFFFFFFFF) -> int:
    crc = init & 0xFFFFFFFF
    for b in data:
        idx = (crc ^ b) & 0xFF
        crc = (_CRC32_TABLE[idx] ^ (crc >> 8)) & 0xFFFFFFFF
    return crc

# ============ Intel HEX 读写 ============
class IntelHex:
    def __init__(self): self.data={}
    @staticmethod
    def _parse_record(line):
        if not line.startswith(':'): raise ValueError("Invalid HEX record")
        raw=bytes.fromhex(line[1:].strip())
        rl,addr,rt=raw[0],(raw[1]<<8)|raw[2],raw[3]
        dat=raw[4:4+rl]; chk=raw[4+rl]
        if ((sum(raw[:-1])+chk)&0xFF)!=0: raise ValueError("HEX checksum error")
        return rl,addr,rt,dat
    def load(self,path):
        base=0
        with open(path,'r',encoding='ascii') as f:
            for ln in f:
                ln=ln.strip()
                if not ln: continue
                rl,addr,rt,dat=IntelHex._parse_record(ln)
                if rt==0x00:
                    absaddr=base+addr
                    for i,b in enumerate(dat): self.data[absaddr+i]=b
                elif rt==0x01: break
                elif rt==0x02: base=((dat[0]<<8)|dat[1])<<4
                elif rt==0x04: base=((dat[0]<<8)|dat[1])<<16
                elif rt in (0x03,0x05): pass
    def add_bytes(self,start,buf,overwrite=False):
        for i,b in enumerate(buf):
            a=start+i
            if not overwrite and a in self.data and self.data[a]!=b:
                raise ValueError(f"Address collision at 0x{a:08X} (existing=0x{self.data[a]:02X}, new=0x{b:02X})")
            if overwrite or (a not in self.data):
                self.data[a]=b
    def save_full_flash(self,path,base_addr,size,fill=0xFF,rec_size=16):
        with open(path,'w',encoding='ascii',newline='\n') as f:
            def emit(addr16, rt, payload):
                rl=len(payload)
                full=bytearray([rl,(addr16>>8)&0xFF,addr16&0xFF,rt])+bytearray(payload)
                chk=(-sum(full))&0xFF
                f.write(':'+full.hex().upper()+f"{chk:02X}\n")
            cur_ela=None; addr=base_addr; end=base_addr+size
            while addr<end:
                ela=addr>>16
                if ela!=cur_ela:
                    emit(0,0x04,bytes([(ela>>8)&0xFF,ela&0xFF])); cur_ela=ela
                addr16=addr&0xFFFF; max_in_64k=0x10000-addr16
                n=min(rec_size,end-addr,max_in_64k)
                chunk=bytearray(n)
                for i in range(n):
                    a=addr+i; chunk[i]=self.data.get(a,fill)
                emit(addr16,0x00,chunk); addr+=n
            emit(0,0x01,b'')
    def read_bytes(self,start_addr,size,fill=0xFF):
        return bytes(self.data.get(start_addr+i,fill) for i in range(size))

# ============ 工具函数 ============
def get_regions(hexobj: IntelHex):
    if not hexobj.data: return []
    addrs=sorted(hexobj.data); regions=[]; s=addrs[0]; prev=addrs[0]
    for a in addrs[1:]:
        if a==prev+1: prev=a
        else: regions.append((s,prev,prev-s+1)); s=prev=a
    regions.append((s,prev,prev-s+1))
    regions.sort(key=lambda x: x[2], reverse=True)
    return regions

def calc_main_crc_and_size_from_out(out_hex: IntelHex, start: int, end: int):
    size=end-start+1; buf=out_hex.read_bytes(start,size,fill=0xFF)
    crc=crc32_reflected(buf,0xFFFFFFFF)^0xFFFFFFFF
    return crc&0xFFFFFFFF, size

def build_header(version_u32,start_u32,size_u32,crc32_u32,key16: bytes):
    head16=struct.pack('<IIII',version_u32,start_u32,size_u32,crc32_u32)
    enc16=aes128_ecb_encrypt_block(head16,key16)
    return head16+enc16

# ============ SREC 生成（S3）===========
def _srec_checksum(byte_list): return (~(sum(byte_list)&0xFF))&0xFF
def _emit_S3(f,addr,data:bytes):
    count=4+len(data)+1
    fields=[count,(addr>>24)&0xFF,(addr>>16)&0xFF,(addr>>8)&0xFF,addr&0xFF]+list(data)
    cks=_srec_checksum(fields)
    f.write("S3"+"".join(f"{b:02X}" for b in fields)+f"{cks:02X}\n")
def _emit_S0(f,text="APP"):
    d=text.encode("ascii"); count=2+len(d)+1
    fields=[count,0x00,0x00]+list(d); cks=_srec_checksum(fields)
    f.write("S0"+"".join(f"{b:02X}" for b in fields)+f"{cks:02X}\n")
def _emit_S7(f,addr):
    fields=[4,(addr>>24)&0xFF,(addr>>16)&0xFF,(addr>>8)&0xFF,addr&0xFF]
    cks=_srec_checksum(fields)
    f.write("S7"+"".join(f"{b:02X}" for b in fields)+f"{cks:02X}\n")

def save_app_as_srec(out_hex: IntelHex, path, header_addr, main_start, main_end, rec_size=32, title="APP"):
    with open(path,"w",encoding="ascii",newline="\n") as f:
        _emit_S0(f,title)
        head=out_hex.read_bytes(header_addr,32,fill=0xFF)
        for i in range(0,len(head),rec_size):
            _emit_S3(f,header_addr+i,head[i:i+rec_size])
        total=main_end-main_start+1; off=0
        while off<total:
            n=min(rec_size,total-off)
            _emit_S3(f,main_start+off,out_hex.read_bytes(main_start+off,n,fill=0xFF))
            off+=n
        _emit_S7(f,main_start)

# ============ 合并 ============
def merge_hex(boot_path,app1_path,app2_path,ver1,ver2,key_hex,logger=None):
    log = logger if callable(logger) else print
    if not (boot_path and app1_path and app2_path): raise ValueError("请先选择三个 HEX 文件。")
    key=bytes(16)
    if key_hex.strip():
        s=key_hex.strip().replace(' ',''); s=s[2:] if s.lower().startswith('0x') else s
        if len(s)!=32: raise ValueError("AES 密钥需 32 个十六进制字符。")
        key=bytes.fromhex(s)
    out=IntelHex()

    def chk_in_flash(hexobj: IntelHex, tag:str):
        if not hexobj.data: return
        lo=min(hexobj.data); hi=max(hexobj.data)
        if lo<FLASH_BASE or hi>=FLASH_BASE+FLASH_SIZE:
            raise ValueError(f"{tag} 超出 2MB Flash：0x{lo:08X}..0x{hi:08X}")

    boot=IntelHex(); boot.load(boot_path); chk_in_flash(boot,"Bootloader")
    for a,b in boot.data.items():
        if a in out.data and out.data[a]!=b: raise ValueError(f"Boot 冲突 0x{a:08X}")
        out.data[a]=b

    def process_app(app_path, version_u32, tag):
        app=IntelHex(); app.load(app_path); chk_in_flash(app,tag)
        if not app.data: raise ValueError(f"{tag} 为空")
        regions=get_regions(app)
        log(f"{tag} 主区: 0x{regions[0][0]:08X}..0x{regions[0][1]:08X}")
        main_start,main_end,_=regions[0]
        for a,b in app.data.items():
            if a in out.data and out.data[a]!=b:
                raise ValueError(f"{tag} 与输出冲突 0x{a:08X}")
            out.data[a]=b
        crc,size=calc_main_crc_and_size_from_out(out,main_start,main_end)
        marker_addr=main_start-MARKER_OFFSET
        out.add_bytes(marker_addr,struct.pack('<I',MARKER_VALUE),overwrite=True)
        header_addr=main_start-HEADER_OFFSET
        header=build_header(version_u32,main_start,size,crc,key)
        out.add_bytes(header_addr,header,overwrite=True)
        return {"start":main_start,"end":main_end,"size":size,"crc":crc,"header_addr":header_addr}

    info1=process_app(app1_path,ver1,"App1")
    info2=process_app(app2_path,ver2,"App2")
    return out,info1,info2

# ============ GUI ============
class AppGUI:
    def __init__(self,root):
        self.root=root
        root.title("HEX 合并工具（Boot + App1 + App2 + SREC 升级包，文件名 mcu_1.bin/mcu_2.bin）")

        self.var_boot=tk.StringVar()
        self.var_app1=tk.StringVar()
        self.var_app2=tk.StringVar()
        self.var_ver1=tk.StringVar(value="0x00000001")
        self.var_ver2=tk.StringVar(value="0x00000001")
        self.var_key =tk.StringVar(value="00"*16)

        row=0
        self._add_file_row("Bootloader HEX",self.var_boot,row); row+=1
        self._add_file_row("App1 HEX",self.var_app1,row); row+=1
        self._add_file_row("App2 HEX",self.var_app2,row); row+=1

        tk.Label(root,text="App1 版本(u32)",width=16,anchor='e').grid(row=row,column=0,sticky='e',padx=6,pady=6)
        tk.Entry(root,textvariable=self.var_ver1,width=20).grid(row=row,column=1,sticky='w'); row+=1
        tk.Label(root,text="App2 版本(u32)",width=16,anchor='e').grid(row=row,column=0,sticky='e',padx=6,pady=6)
        tk.Entry(root,textvariable=self.var_ver2,width=20).grid(row=row,column=1,sticky='w'); row+=1
        tk.Label(root,text="AES-128 密钥(16B HEX)",width=16,anchor='e').grid(row=row,column=0,sticky='e',padx=6,pady=6)
        tk.Entry(root,textvariable=self.var_key,width=70).grid(row=row,column=1,sticky='we',padx=4,pady=6); row+=1

        tk.Button(root,text="合成并保存（HEX + SREC->mcu_*.bin）",command=self.on_merge).grid(row=row,column=0,columnspan=3,sticky='we',padx=6,pady=8); row+=1

        self.logbox=tk.Text(root,height=16); self.logbox.grid(row=row,column=0,columnspan=3,sticky='nsew',padx=6,pady=6)
        root.columnconfigure(1,weight=1); root.rowconfigure(row,weight=1)

        if HAS_DND: self.log("拖拽启用：把 .hex 直接拖到输入框")
        else:       self.log("提示：如需拖拽，请安装 tkinterdnd2")

    def _add_file_row(self,title,var,row):
        tk.Label(self.root,text=title,width=16,anchor='e').grid(row=row,column=0,sticky='e',padx=6,pady=6)
        ent=tk.Entry(self.root,textvariable=var,width=70); ent.grid(row=row,column=1,sticky='we',padx=4,pady=6)
        tk.Button(self.root,text="选择文件",command=lambda:self.pick_file(var)).grid(row=row,column=2,padx=6,pady=6)
        if HAS_DND:
            ent.drop_target_register(DND_FILES)
            ent.dnd_bind('<<Drop>>', lambda e,v=var:self._on_drop(e,v))

    def _on_drop(self,event,var):
        try:
            paths=self.root.tk.splitlist(event.data)
            if not paths: return
            p=paths[0].strip()
            if p.startswith('{') and p.endswith('}'): p=p[1:-1]
            var.set(p)
        except Exception as e:
            self.log(f"[拖拽失败] {e}")

    def pick_file(self,var):
        p=filedialog.askopenfilename(title="选择 Intel HEX 文件",
                                     filetypes=[("Intel HEX","*.hex;*.HEX;*.ihex;*.ihexf"),("All files","*.*")])
        if p: var.set(p)

    def log(self,msg):
        self.logbox.insert('end',msg+'\n'); self.logbox.see('end'); self.root.update_idletasks()

    @staticmethod
    def _u32(text):
        t=text.strip()
        return (int(t,16) if t.lower().startswith('0x') else int(t)) & 0xFFFFFFFF

    def on_merge(self):
        try:
            boot=self.var_boot.get().strip()
            app1=self.var_app1.get().strip()
            app2=self.var_app2.get().strip()
            v1=self._u32(self.var_ver1.get()); v2=self._u32(self.var_ver2.get())
            key=self.var_key.get()

            self.log("开始处理 …")
            out,info1,info2=merge_hex(boot,app1,app2,v1,v2,key,logger=self.log)

            # 保存合成 HEX（2MB 全量，空洞 0xFF）
            save_hex=filedialog.asksaveasfilename(title="保存合成 HEX（完整 2MB）",
                                                  defaultextension=".hex",
                                                  initialfile="BootAndApp.hex",
                                                  filetypes=[("Intel HEX","*.hex"),("All files","*.*")])
            if save_hex:
                out.save_full_flash(save_hex,FLASH_BASE,FLASH_SIZE,fill=0xFF,rec_size=16)
                self.log(f"[HEX] 已保存：{save_hex}")

            # 保存“内容为 SREC 的 .bin”文件
            def save_srec_bin(tag,info,default_name):
                path=filedialog.asksaveasfilename(
                    title=f"保存 {tag} 升级包（SREC 内容，文件名 *.bin）",
                    defaultextension=".bin",
                    initialfile=default_name,
                    filetypes=[("BIN(文本SREC)","*.bin"),("All files","*.*")]
                )
                if path:
                    # 实际写入 SREC 文本
                    save_app_as_srec(out,path,info["header_addr"],info["start"],info["end"],rec_size=32,title=tag)
                    total_main=info["end"]-info["start"]+1
                    self.log(f"[{tag}] 已保存（SREC 文本）：{path}  (header@0x{info['header_addr']:08X} 32B, main@0x{info['start']:08X}..0x{info['end']:08X}, size=0x{total_main:X})")

            save_srec_bin("App1",info1,"mcu_1.bin")
            save_srec_bin("App2",info2,"mcu_2.bin")

            self.log(f"App1: start=0x{info1['start']:08X}, end=0x{info1['end']:08X}, size(main)=0x{info1['size']:X}, crc32=0x{info1['crc']:08X}")
            self.log(f"App2: start=0x{info2['start']:08X}, end=0x{info2['end']:08X}, size(main)=0x{info2['size']:X}, crc32=0x{info2['crc']:08X}")
            messagebox.showinfo("完成","合成 HEX 与 SREC（命名为 mcu_*.bin）导出完成！")
        except Exception as e:
            messagebox.showerror("错误",str(e))
            self.log(f"[错误] {e}")

def main():
    root = TkinterDnD.Tk() if HAS_DND else tk.Tk()
    root.minsize(900,600)
    AppGUI(root)
    root.mainloop()

if __name__=="__main__":
    main()
