clear;
close all;

% parameters
f = 6000; % carrier frequency, 6 kHz
fs = f * 2; % sampling frequency
dtr = 18; % data transfer rate (bits/s)
ttr = 5 / dtr; % duration of the signal
t = 0:1/fs:ttr-1/fs; % time vector
A = 1; % amplitude
M = 32; % 32-PSK modulation
k = log2(M); % bits per symbol (5 bits)
N = 1000; % number of iterations for calculation

% grey code in decimal
gray_code_32PSK = [...
    0, 1, 3, 2, 6, 7, 5, 4, ...      
    12, 13, 15, 14, 10, 11, 9, 8, ... 
    24, 25, 27, 26, 30, 31, 29, 28, ... 
    20, 21, 23, 22, 18, 19, 17, 16];  


% defining signals
signals = zeros(M, length(t));  % 32-row matrix initialization

% phase shifts
phase_shifts = (0 : M-1) * (2 * pi / M);

% generating signals
for i = 1 : M
    signals(i, :) = A * sin(2 * pi * f * t + phase_shifts(i));
end

% defining EbNo range and initialize result arrays
EbNo = -10:1:30;
ser = zeros(1,length(EbNo));
ber = zeros(1,length(EbNo));
snr = zeros(1,length(EbNo));
transmittedSignal = zeros(32,round(ttr * fs/2));

% calculate BER and SER for each Eb/No
for i = 1:length(EbNo)
    bitError = 0;
    symbolError = 0;

    for j = 1:N
        snr(i) = EbNo(i) + 10 * log10(dtr / (fs / 2)); % Signal-to-noise ratio
        transmittedSignal = awgn(signals(1,:), snr(i), 'measured');
        corReceived = zeros(1, 32);
        
        % Calculate correlation with each symbol
        for c = 1:32
            corMatrix = corrcoef(transmittedSignal, signals(c,:));
            corReceived(c) = corMatrix(1,2);
        end
        
        % Find the index of the detected symbol with the highest correlation
        [~, n] = max(corReceived);

        % Transmitted symbol (assumed symbol 0 here) and detected symbol in Gray code
        transmitted_symbol = gray_code_32PSK(1); 
        detected_symbol = gray_code_32PSK(n);

        % Calculate bit errors by XOR-ing transmitted and detected symbols and counting differing bits
        bit_errors = sum(dec2bin(bitxor(transmitted_symbol, detected_symbol)) == '1');

        % Update error counts
        bitError = bitError + bit_errors;
        if bit_errors > 0
            symbolError = symbolError + 1;
        end
    end
    
    % Calculate BER and SER
    ber(i) = bitError / (k * j); % BER calculation
    ser(i) = symbolError / j;    % SER calculation
end

% Theoretical BER and SER calculations
berTheory = zeros(1, length(EbNo));
serTheory = zeros(1, length(EbNo));
for i = 1:length(EbNo)
    berTheory(i) = 2 / log2(M) * qfunc(sqrt(2 * (10.^(EbNo(i) / 10)) * log2(M)) * sin(pi / M));
    serTheory(i) = 2 * qfunc(sqrt(2 * (2 * 10.^(EbNo(i) / 10)) * sin(pi / M)));
end

% Plot BER vs EbNo
figure(1);
semilogy(EbNo, ber, EbNo, berTheory);
xlabel('EbNo (dB)');
ylabel('Bit Error Rate (BER)');
title('BER vs EbNo');
grid on;

% Plot SER vs EbNo
figure(2);
semilogy(EbNo, ser, EbNo, serTheory);
xlabel('EbNo (dB)');
ylabel('Symbol Error Rate (SER)');
title('SER vs EbNo');
grid on;
