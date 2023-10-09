clc;
clearvars
close all

% lab 3
% 20222182

% ------------- 1- CREATE 2D GRAPHS ---------------------------

% create vector x that takes values from 0 to 2pi w/ step 0.1
x = linspace(0, 2*pi, (2*pi)/0.1 + 1);

% calcuate the value of the function at each value of x for each function
% separately
f1x = x.^3 + tan(x);
f2x = exp(x);
f3x = exp(3*x);
f4x = exp(5*x);

% A) create the first windows and plot vector f1 vs vector x
figure;
plot(x, f1x);
xlabel('x');
ylabel('f1');
axis([0 2*pi -10 200]);
grid on;
title('Plot of f1x = x^3 + tan(x) vs x');

% B) create a second window and plot each vector f2, f3, f4 vs vector x on
% the same axes. each line produced should be plotted as a different type
% of line, color, and marker symbol
% C) label x & y axis and give title for all plots. grid = on and limit
% axis for all plots
figure;
plot(x, f2x, '-bo', 'LineWidth', 1.5, 'DisplayName', 'f2x (e^x)');
hold on;
plot(x, f3x, '--rs', 'LineWidth', 1.5, 'DisplayName', 'f3x (e^{3x})');
plot(x, f4x, ':gd', 'LineWidth', 1.5, 'DisplayName', 'f4x (e^{5x})');
xlabel('x');
ylabel('functions');
title('f2x, f3x, f4x vs. x');
legend('Location', 'best');
axis([0 2*pi -10 200]);
grid on; 
hold off; 


% ------------- 2- PREPARATION OF SPECIALIZED PLOTS ------------------
% A) 6 students took 4 exams. marks of the students are saved in 6x4 matrix
% create this matrix containing marks from 1 to 10. draw a bar plot
% representing results of each student
% B) represent results of each student in a single bar where height is sum
% of marks
% C)  label x & y axis and give title for all plots. grid = on and limit
% axis for all plots
marks_matrix = randi([1, 10], 6, 4);
figure;
bar(marks_matrix)
xlabel("Students");
ylabel("Marks");
title('Marks of each student for 4 exams')
legend('Exam 1', 'Exam 2', 'Exam 3', 'Exam 4');
grid on;
ylim([0, 11]);


% ------------- Comp Task ----------------
% create a matrix where each column represents values of the given
% functions
% X takes values from -3pi to 3pi
% using fill function, color the graphic. each function should be a
% different color

x = linspace(-3*pi, 3*pi, 1000);

y1x = sin(x) - 3;
y2x = 3*sin(2*x);
y3x = (sin(x) + 3) / 2;

figure;
hold on;
fill(x, y1x, 'b', 'EdgeColor', 'none', 'FaceAlpha', 0.5);  
fill(x, y2x, 'r', 'EdgeColor', 'none', 'FaceAlpha', 0.5);  
fill(x, y3x, 'g', 'EdgeColor', 'none', 'FaceAlpha', 0.5); 
xlabel('x');
ylabel('y');
title('Functions y1x, y2x, y3x with Different Fill Colors');
legend('y1x', 'y2x', 'y3x');
hold off;
