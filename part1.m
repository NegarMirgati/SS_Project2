load('filt.mat')
figure(1);
freqz(Hi);

figure(2);
zplane(Hi);

figure(3);
grpdelay(Hi);

figure(4);
impz(Hi);

flag1 = isstable(Hi);


[noisy1, Fs] = audioread('noisy1.wav');

y = filter(Hi, noisy1);
audiowrite('denoised1.wav', y * 1000, Fs);

sound(y * 1000,Fs);

