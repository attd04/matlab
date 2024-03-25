% telecommunications lab 2, task 4

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

% plot sequences x and y
subplot(2,1,1);
plot(x);
title('sequence x');
xlabel('index');
ylabel('value');

subplot(2,1,2);
plot(y);
title('correlated sequence y');
xlabel('index');
ylabel('value');

