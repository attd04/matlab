% Write a program in Matlab that will represent 
% the graphs the functions 𝑦=𝑥2−1 and 𝑦=𝑥+5
% and calculate the area bounded by them

clc; clear;

% plotting first graph- y1
x = -5:0.1:5; % array from -5 to 0.1 with step of 5
y1 = ((x.^2)-1);
y2 = x + 5;

figure(1)
plot(x, y1, "r-", "Linewidth", 2);
hold on

% plotting second graph- y2
plot(x,y2, "b-", "Linewidth", 2);

% finding trapped area
area = trapz(x, min(y1,y2))
