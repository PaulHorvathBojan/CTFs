import string

liszt = [54, 396, 131, 198, 225, 258, 87, 258, 128, 211, 57, 235, 114, 258, 144, 220, 39, 175, 330, 338, 297, 288]
decr_list = list(string.ascii_uppercase) + list(string.digits) + ['_']

decr = ""
for val in liszt:
    decr += decr_list[val % 37]

print(decr)