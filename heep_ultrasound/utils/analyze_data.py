import sys
import matplotlib.pyplot as plt

if len(sys.argv) != 3:
    print("Usage: script.py filename window")
    sys.exit(-1)

filename = sys.argv[1]
window = int(sys.argv[2])

counter = 0
with open(filename, "r") as file:
    lines = file.readlines()
    print("Lines:", len(lines))
    w = lines[window]
    w_split = w.split(",")
    w = [int(i) for i in w_split]
    plt.plot(w)
    plt.show()




