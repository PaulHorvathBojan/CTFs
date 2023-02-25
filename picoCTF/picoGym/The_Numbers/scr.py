nolist = [16, 9, 3, 15, 3, 20, 6, 20, 8, 5, 14, 21, 13, 2, 5, 18, 19, 13, 1, 19, 15, 14]

chars = ""
for i in range(len(nolist)):
    chars += chr(64 + nolist[i])

print(chars)
