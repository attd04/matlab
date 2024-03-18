clear all
close all
f = 100; %freq of sinusoid
fd = 1000; % sampling freq
ttr = 1; % duration of sinusoid = 1 sec
[s] = sinusoid(f,0,ttr,fd); 
%generating sinusoid signal using function

t = 0:1/fd:ttr-1/fd;
% creates time axis for plotting sin graph
% without it, only numerical values would be displayed on axis

plot(t,s)
title('Generated Sin Signal');
xlabel('Time (s)')
ylabel('Amplitude')
figure;
spectrum(s,fd); % calculates and plots amplitude spectrum
