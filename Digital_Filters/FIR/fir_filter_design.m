f1 = input("f1: ");
f2 = input("f2: ");
fs = input("sampling frequency: ");
del_2 = input("Stopband attenuation: ");

deltaF = abs(f1 - f2);
M = del_2 * fs/(22 * deltaF);

f  = [f1]/(fs/2);
hc = fir1(round(M)-1, f, 'low'); \

figure
plot((-0.5:1/4096:0.5-1/4096)*fs,20*log10(abs(fftshift(fft(hc,4096)))))
axis([0 20000 -60 20])
title('Filter Frequency Response')
grid on
