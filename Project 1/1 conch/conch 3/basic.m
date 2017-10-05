[y, Fs] = audioread('conch.wav');

x = fft(y);
N = length(y);
freqHz = (0:1:(length(x) - 1)).*Fs/N;


figure(1);
plot(freqHz(1:length(freqHz)/2), abs(x)(1:length(x)/2));
xlim([0, 1200]);
print -dpng "snailhorn.png";
