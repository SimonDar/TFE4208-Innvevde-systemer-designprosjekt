N=8192;
fs=11025;

sine_freq=100;
A = 6534 / 2;
offset = 6534 / 2;

ts=1/fs;
t = ts*(0:N-1);

x=A*sin(2*pi*sine_freq*t) + offset;

writematrix(x.','sine.csv');
plot(t,x);