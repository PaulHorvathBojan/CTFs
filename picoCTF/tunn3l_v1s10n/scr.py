file = open('tunn3l_v1s10n','rb') #open file in readmode as bytes
file_bytes = file.read() # Read header bytes
bmp_header = file_bytes[:2] # first 2 bytes are bmp header
bmp_size = int.from_bytes(file_bytes[2:5],byteorder='little') # next 4 bytes
bmp_offset = int.from_bytes(file_bytes[10:13],byteorder='little') # last 4 bytes of header are the offset where the
print("Header:" + str (bmp_header))
print("Size:" + str(bmp_size))
print("Offset: " + str(bmp_offset))
