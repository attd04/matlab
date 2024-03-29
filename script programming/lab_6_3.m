clc;
clearvars;
close all;

% lab 6
% variables, scripts, and functions

% -------- TASK 2: Using global variables -----------
% create a script and functions where data is tranferred
% using global variables

% create a script where x vector is generated from 2pi to -2pi
% with step of -0.2.
x = 2*pi:-0.2:-2*pi;
y = 0; % initialize y

my_function;

% plot results using yellow dahsed line w/ * markers
plot(x, y, 'y--*');
xlabel('x');
ylabel('y(x)');
title('plot of y(x)');
axis([-6 6 1.5 2.5]);
grid on;

% demonstrate you used created global variables using function "whos"
disp('global variables:');
whos; % displays all variables active in the workspace

% making function
% Function reads this vector then calculates
%        { sin(x) / x    when x != 0
% y(x) = {
%        {    1          when x = 0
% calculations of these 2 parts is implemented in separate
% functions


function my_function
    global x y;  % define global variables

    % initialize y vector
    y = zeros(size(x));

    % calculate y(x) for each element in x
    for i = 1:length(x)
        if x(i) == 0
            y(i) = y_at_zero();
        else
            y(i) = y_not_zero(x(i));
        end
    end
end

function y_value = y_at_zero()
    % calculate y(x) when x = 0
    y_value = 1;
end

function y_value = y_not_zero(x)
    % calculate y(x) when x != 0
    y_value = sin(x) / x;
end
