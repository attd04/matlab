clear all
close all

f1 = 100; % freq of first sin
A1 = 1; % amp of first sin
phi1 = 0; %phase of first sin

% parameters for second sin
f2 = 200; % freq
A2 = 0.5; % amp
phi2 = pi/4; % phase

fs = 1000; % sampling freq
ttr = 1; %duration of sin = 1 sec

% generate sin signal using function
[s1,s2,s_sum] = sinusoid(f1,A1,phi1,f2,A2,phi2,ttr,fs);

% generate noise 
noise_amp = 0.3; % change value to inc or dec noise
noise = noise_amp*rand(1,length(s_sum));

% add noise to sum 
s_sum_noisy = s_sum + noise;


% create time axis for plotting
t = 0:1/fs:ttr-1/fs;

% plot first sin graph
figure; 
plot(t,s1)
title('Generated Sin Signal 1');
xlabel('Time (s)');
ylabel('Amplitude');

% plot second graph
figure; 
plot(t,s2)
title('Generated Sin Signal 2');
xlabel('Time (s)');
ylabel('Amplitude');

% plot sum of both sin graphs
figure;
plot(t,s_sum)
title('Sum of Two Sin Signals');
xlabel('Time (s)');
ylabel('Amplitude');

% new window for plotting amp spectrum of sum
figure;
spectrum(s_sum_noisy, fs); % calculates and plots amplitude spectrum
