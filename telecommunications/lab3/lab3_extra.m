clear all
close all

%% Parameters of the telecommunication system
f = 1000; % frequency of the carrier
fs = 10000; % sampling frequency, 
% has to be at least 2 times larger than carrier frequency
dtr = 10; % data transfer rate, 10 bits/s
ttr = 1/dtr; % signal's duration
t = 0:1/fs:ttr-1/fs; % time vector
A = 1; % amplitude

%% Transmitter part
% Signals Generation
signals = zeros(4, ttr*fs); % 4 row matrix for signals (4PSK)
for i = 1:4
    signals(i, :) = A*sin(2*pi*f*t + (i-1)*pi/2); 
    % phase shifts of pi/2 for 4PSK
end

N = 1000; % number of repetitions
EbN0 = -20:1:20; % bit energy to noise ratio in dB
BER = zeros(1, length(EbN0));
SER = zeros(1, length(EbN0)); % symbol error rate
ind = 1;

for j = EbN0 % bit energy to noise ratio
    e = 0;
    for i = 1:N

        %% channel with wgn
        snr = j + 10*log10(dtr/(fs/2));
        x = awgn(signals(1, :), snr, 'measured');

        %% correlation receiver
        correlations = zeros(4, 1); 
        % receiver gets 4PSK signal
        for k = 1:4
            k_corr = corrcoef(x, signals(k, :)); 
            % calculation of correlation
            correlations(k) = k_corr(1, 2);
        end

        [~, i_max] = max(correlations); 
        % selection of the most correlated (similar)
        % carrier and save of its position

        %% calculating BER and SER
        if (i_max ~= 1) 
            % error if the received signal 
            % doesn't match the first signal 
            % (phase shifted by 0)
            e = e + 1;
        end
    end
    BER(ind) = e;
    ind = ind + 1;
end

SER = BER / N; % ratio of errors 
% to amount of test iterations (for 4PSK, SER = BER)

BER = BER / (N * log2(4)); % N - amount of test iterations 
% log2(4) - bits per symbol for 4PSK (2 bits)

semilogy(EbN0, BER);
hold on;
semilogy(EbN0, SER);
hold on;

xlabel('Eb/N0 (dB)');
title('BER vs Eb/N0 for 4PSK');
grid on;

