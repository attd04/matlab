% telecommunications lab 2, task 3

N = 100000; % array length
std = 1; % standard deviation
mean = 0;

% generate normally distributed nums w/ mean & std
x = mean + std * randn(1,N);

% calculate power spectrum estimate
[Pxx, f] = periodogram(x);

% plot power spectrum
figure;
plot(f, 10*log10(Pxx));
title('power spectrum estimate of signal x');
xlabel('frequency (Hz)');
ylabel('power/frequency (dB/Hz)');

