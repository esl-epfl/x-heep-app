import sys
import struct 
import matplotlib.pyplot as plt
import matplotlib

if len(sys.argv) not in [3, 2]:
    print("interpret_data.py filename")
    sys.exit(-1);

filename = sys.argv[1]

max_n = 35000
if len(sys.argv) == 3:
    max_n = int(sys.argv[2])

res = []

with open(filename, "rb") as file:
    while(word:=file.read(2)):
        if len(res) >= max_n or word == b"\xff\xff":break
        unpacked = struct.unpack("<H", word)
        res.append(unpacked[0])

#res = res[:len(res)]

plt.plot(res)
plt.show()

