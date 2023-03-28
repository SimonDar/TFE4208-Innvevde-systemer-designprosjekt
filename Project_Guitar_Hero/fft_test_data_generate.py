import numpy as np

numbers = []
f = open("sine.txt", "r")
for i in range(0, 8191):
    numbers.append(int(f.readline().strip(), 16)) 
f.close()
gfg = np.fft.fft(numbers)
print(gfg)

real = []
img = []
for e in gfg:
    real.append(e.real)
    img.append(e.imag)

print(real)
print(img)

f = open("fft_sample_values.txt", "a")
for e in gfg:
    f.write(f"{int(e.real):x} {int(e.imag):x}\n")