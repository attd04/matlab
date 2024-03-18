% generating sin signals
function [s1,s2,s_sum] = sinusoid(f1,A1,phi1,f2,A2,phi2,duration,fs)

% time vector
t = 0:1/fs:duration-1/fs;

% generating two sin functions
s1 = A1 * sin(2*pi*f1*t+phi1);
s2 = A1 * sin(2*pi*f2*t+phi2);

% summing two sin signals
s_sum = s1+s2;

end
