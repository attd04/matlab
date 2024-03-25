% telecommunications lab 2, task 5

N = 1000; % array length
a0 = 1; % coefficient a0
a1 = 0.5;
a2 = -0.3;

% generate normally distributed random numbers for x
x = randn(1,N);

% form correlated sequence y
y = zeros(1,N);
for i = 3:N
    y(i) = a0 * x(i) + a1 * x(i-1) + a2 * x(i-2);
end 

% calculte cross correlation function of y
[acor, lag] = xcorr(y);

% find index of zero delay
zero_delay_index = find(lag == 0);

% normalize cross correlation function
acor_normalized = acor / acor(zero_delay_index);

% plot cross correlation function
figure;
plot(lag, acor_normalized);
title('cross correlation function of correlated sequence y');
xlabel('lag');
ylabel('normalized autocorrelation');

