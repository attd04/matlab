function spectrum(s,fs)
% inputs: signal - time-domain signal & fs - sampling freq
% outputs: none (plots amp and phase spectra)

% calc fourier transform of the signal
F = fft(s);

% calc number of samples in signal
N = length(F);

% calc freq resolution
freq_resolution = fs/N;

% create freq axis
freq_axis = 0:freq_resolution:fs-freq_resolution;
% take only positive half of spectrum (due to symmetry)
F= F(1:N/2);
freq_axis = freq_axis(1:N/2);

% calc amplitude spectrum
amplitude_spectrum = abs(F) / (N/2);

% calc phase spectrum
phase_spectrum = angle(F) / pi*180;

%plot amp spectrum
stem(freq_axis, amplitude_spectrum);
title('Amp Spectrum');
xlabel('Frequency (Hz)');
ylabel('Amplitude');
grid on;

% plot phase spectrum
figure;
stem(freq_axis, phase_spectrum);
title('Phase Spectrum');
xlabel('Frequency (Hz)');
ylabel('Phase (degrees)');
grid on;
end
