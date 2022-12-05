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
            count = 0
            window = []
            possible_end = False
            while(word:=input_file.read(2)):
                if word == b"":break
                elif word == b"\xff\xff":
                    if count == 35000:
                        res.append(window)
                        window = []
                        count = 0
                    elif count == 0:
                        if possible_end:
                            possible_end = False
                            print("End of file")
                            break # We should be at the end of file
                        else:
                            possible_end = True
                    else:
                        # We have a corrupted window I guess
                        print("Corrupted window size:", count)
                        window = []
                        count = 0
                else:
                    unpacked = struct.unpack(f"{endianness}H", word)
                    window.append(unpacked[0])
                    count += 1
                    possible_end = False
            for window in res:
                output_file.write(",".join([str(i) for i in window]))
                output_file.write("\n")


