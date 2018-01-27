a = [0.5371, -1.5462, 1.7272];
b = [0.4, 0.4915, 0.4029, 0.7654];

figure(1);
freqz(b, a);

figure(2);
zplane(b, a);

figure(3);
grpdelay(b, a);

figure(4);
impz(b, a);

[denoised1, Fs1] = audioread('denoised1.wav');

y1 = filter(b, a, denoised1);

sound(y1 * 10000,Fs1);


audiowrite('noisy2.wav', y1, Fs1);


[noisy2, Fs2] = audioread('noisy2.wav');

y2 = filter(a, b, noisy2);
audiowrite('denoised2.wav', y2, Fs2);

sound(y2 * 10000, Fs1);



