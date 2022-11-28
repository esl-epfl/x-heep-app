import struct
import sys
import os

if len(sys.argv) < 2:
    print("Usage: script.py [big] folder")
    sys.exit(-1)

dirname = os.getcwd()
endianness = "<"
if len(sys.argv) == 3 and sys.argv[1] == "big":
    endianness = ">"

#input_filename=sys.argv[1] if len(sys.argv) == 3 else sys.argv[2]
#output_filename=sys.argv[2] if len(sys.argv) == 3 else sys.argv[3]
folder_name = sys.argv[1] if len(sys.argv) == 2 else sys.argv[2]


files = [os.path.join(dirname, f) for f in os.listdir(folder_name) if os.path.isfile(os.path.join(folder_name, f))]

for i, file in enumerate(files):
    print("Working on file:", i)
    res = []
    with open(file, "rb") as input_file:
        with open(f"{file}.csv", "w") as output_file:
            while(word:=input_file.read(2)):
                #if word == b"\xff\xff":break
                unpacked = struct.unpack(f"{endianness}H", word)
                res.append(unpacked[0])
            output_file.write(",".join([str(i) for i in res]))


