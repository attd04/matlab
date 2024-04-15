clear all
close all

%% Parameters of the telecommunication system
f = 1000; %frequency of the carrier, 1kHz
fs = 10000; %sampling frequency, has to be at least 2 times larger than carrier frequency
dtr = 10; %data transfer rate, 10 bits/s
ttr = 1/dtr; %signal's duration
t=0:1/fs:ttr-1/fs; %time vector
A = 1; %amplitude

%% Transmitter part
%Signals Generation
signals = zeros(2,ttr*fs); %2 row matrix for signals
for i = 1:2
 signals(i,:)=A*sin(2*pi*f*t+(i-1)*pi);
end

N = 1000; %number of repetitions
EbN0 = -20:1:20; %bit energy to noise ratio in dB
BER = zeros(1, length(EbN0));
SER = zeros(1, length(EbN0)); % symbol error rate
ind = 1;

for j = EbN0 % bit energy to noise ratio
 e = 0;
 for i = 1:N

 %% Channel with White Gaussian Noise
 snr = j + 10*log10(dtr/(fs/2));
 x = awgn(signals(1, :), snr, 'measured');

 %% Correlation Receiver
 correlations = zeros(2, 1); % receiver gets bpsk signal
 for k = 1:2
 k_corr = corrcoef(x, signals(k, :)); %calculation of correlation
 correlations(k) = k_corr(1, 2);
 end

 [~, i_max] = max(correlations); %selection of the most correlated (similar) carrier and save of its position

 %% Calculating BER and SER
 if (i_max==2) %error by one bit
 e=e+1;
 end

 if (i_max~=1) %the presence of error
 SER(ind)=SER(ind)+1;
 end
 end
 BER(ind) = e;
 ind = ind + 1;
end

SER = SER / N; % ratio of errors to amount of test itterations
BER = BER / (N * log2(1)); % N - amount of test itterations , log2(1) - bits persymbol for 2PSK (1 bits)


semilogy(EbN0, BER);
hold on;
semilogy(EbN0, SER);
hold on;

xlabel('Eb/N0 (dB)');
title('BER vs Eb/N0 for 2PSK');
grid on;

