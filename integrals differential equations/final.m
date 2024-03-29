% Autumn Tiede
% Group 4

% Task 1

dlg_title = 'Input';
num_lines = 1;
defaultans = {'0', '1', '0'}; 
limits_c = inputdlg({'Enter lower limit:', 'Enter upper limit:', 'Enter constant:'}, dlg_title, num_lines, defaultans);
a = str2double(limits_c{1});
b = str2double(limits_c{2});
c = str2double(limits_c{3});

f1 = @(x) x.*exp(x); 
f2 = @(x) 1./(x+sin(x));

F1 = @(x) x.*exp(x) - exp(x); 
F2 = @(x) log(abs(x+sin(x))) + c; 

if a > -inf % If a is finite
    area1 = integral(f1, -inf, a);
    area2 = integral(f2, a, b);
    total_area = area1 + area2;
else
    f = @(x) x.*exp(x) + 1./(x+sin(x)); 
    total_area = integral(f, -inf, b);
end

disp(['The area bounded by the curves is: ', num2str(total_area)]);

x1 = linspace(-10, a, 1000);
x2 = linspace(a, b, 1000);
x3 = linspace(b, 10, 1000);

figure();
plot(x1, f1(x1), 'r');
hold on;
plot(x2, f2(x2), 'g');
plot(x1, F1(x1), '--r', Marker= 'pentagram');
plot(x2, F2(x2), '--b', Marker = ".");
xlim([-10 10]);
ylim([-10 10]);xlabel('x');
ylabel('y');
title('Original Function vs Antiderivative Function');
legend('f_1(x)', 'f_2(x)', 'F_1(x)+C', ['F_2(x)+' num2str(c)], 'Location', 'southwest');

% 2 TASK 

x = linspace(-1, 1, 1000);
y = sqrt(4 - x.^2);

radius = y;
height = abs(x(2) - x(1)); % Width of each segment
surface_area = 2*pi*sum(radius.*height);

disp(['Surface Area of Rotation: ', num2str(surface_area)]);

figure();
fill([x fliplr(x)], [y, -y], [0.8 0.8 0.8]); % Fill the area
hold on;
plot(x, y, 'k'); 
plot(x, -y, 'k');
axis equal;
xlabel('x');
ylabel('y');
title('Surface of Rotation');
