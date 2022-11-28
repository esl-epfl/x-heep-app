import sys
import matplotlib.pyplot as plt

if len(sys.argv) != 2:
    print("Usage: script.py filename")
    sys.exit(-1)

filename = sys.argv[1]

content = []
with open(filename, "r") as file:
    content = [int(i) for i in file.readline().split(",")]

for b in range(len(content) - 150000, len(content), 35000):
    window = content[b:b+35000]
    print(window)
    plt.plot(window)
    plt.show()
    plt.clf()




