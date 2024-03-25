% telecommunications lab 2, task 6

N = 100000; % sequence length

% for lpf: a0/a1/a2 = 0.33
% for hpf: a0/a2 = 0.33, a1 = -0.33

a0 = 0.33;
a1 = 0.33;
a2 = 0.33;

% generate normally distributed random numbers for x
x = randn(1,N);

% form correlated sequence y
y = zeros(1,N);
for i = 3:N
    y(i) = a0 * x(i) + a1 * x(i-1) + a2 * x(i-2);
end 

% calculte power spectral density of y
[Pyy, f] = periodogram(y);

% plot power spectral density estimate
figure;
plot(f, 10*log10(Pyy));
title('PSD estimate of correlated signal y');
xlabel('frequency (Hz)');
ylabel('power/frequency (dB/Hz)');

