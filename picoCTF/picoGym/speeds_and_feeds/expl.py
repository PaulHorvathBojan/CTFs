# import pwntools
from pwn import *

# open up remote connection
r = remote('mercury.picoctf.net', 16524)

outfile = open('outfile', 'a')

x = str(r.recvline())
outfile.write(x + "\n")
while x != "\n" :
    x = str(r.recvline())
    outfile.write(x + "\n")

outfile.close()

print(s)
