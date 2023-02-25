import string

LOWERCASE_OFFSET = ord("a")
ALPHABET = string.ascii_lowercase[:16]


def b16_encode(plain):
    enc = ""
    for c in plain:
        binary = "{0:08b}".format(ord(c))
        enc += ALPHABET[int(binary[:4], 2)]
        enc += ALPHABET[int(binary[4:], 2)]
    return enc


def shift(c, k):
    t1 = ord(c) - LOWERCASE_OFFSET
    t2 = ord(k) - LOWERCASE_OFFSET
    return ALPHABET[(t1 + t2) % len(ALPHABET)]


def deshift(c, k):
    t1 = ord(c) - LOWERCASE_OFFSET
    t2 = ord(k) - LOWERCASE_OFFSET
    return ALPHABET[(t1 - t2) % len(ALPHABET)]


def b16_decode(ciph):
    dec = ""

    for c in range(0, len(ciph), 2):
        b = ""
        b += "{0:b}".format(ALPHABET.index(ciph[c])).zfill(4)
        b += "{0:b}".format(ALPHABET.index(ciph[c + 1])).zfill(4)
        dec += chr(int(b, 2))

    return dec


def decrypt(ciph, key):
    decr = ""

    for i, c in enumerate(ciph):
        decr += deshift(c=c, k=key[i % len(key)])

    decr = b16_decode(ciph=decr)

    return decr


ctxt = "lkmjkemjmkiekeijiiigljlhilihliikiliginliljimiklligljiflhiniiiniiihlhilimlhijil"
for k in ALPHABET:
    print(decrypt(ciph=ctxt, key=k))
# Code for encryption:
# flag = "redacted"
# key = "redacted"
# assert all([k in ALPHABET for k in key])
# assert len(key) == 1
#
# b16 = b16_encode(flag)
# enc = ""
# for i, c in enumerate(b16):
# 	enc += shift(c, key[i % len(key)])
# print(enc)
