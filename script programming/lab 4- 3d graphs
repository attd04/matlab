clear vars
close all

% 3d graphics - lab 4

% -------------- 1. MAKING 3D PLOTS -------------------
% a) plot the given function
% angle of the plot for x and y axes should be 90 deg. 
% label all axes and add title for the plot

x = linspace(-2, 1, 100); % making ranges
y = linspace(-2, 1, 100);

[X, Y] = meshgrid(x, y); % creates coordinate matrix

fxy = 1 - (2*X.^2) - (3*Y.^2);

figure;
surf(X, Y, fxy); % plotting points
xlabel('x');
ylabel('y');
zlabel('fxy');
title('fxy = 1 - 2x^2 - 3y^2');
view(90, 90);
shading interp;


% b) plot surface of a function when
xb = (2*rand(1,200)-1).*sqrt(pi/2);
yb = (2*rand(1,200)-1).*sqrt(pi/2);

% angle for the x, y axes should be 45 deg
% label all axes and give title

[XB, YB] = meshgrid(xb, yb);

fxyb = sin(XB.^2 + YB.^2);

figure;
surf(XB, YB, fxyb);
xlabel('x');
ylabel('y');
zlabel('fxyb');
title('fxy = sin(xb^2 + yb^2)');
view(45, 45);
shading interp; % smoother shading

% -------------- COMP TASK -------------------
% plot a 3d graph with...
% a) camlight effect
% b) contour (ang k.) to main axis
% c) semitransparent surface

[xc, yc] = meshgrid(-1:0.01:1, -1:0.01:1); % creating coordinates with a range
zc = 1 - (xc.^2 + yc.^2);

figure;
surf(xc, yc, zc, 'FaceAlpha', 0.5); % semi transparent

camlight('right');  % camlight effect from right side

hold on;
contour3(xc, yc, zc, 'k');  % contour lines in black
xlabel('X');
ylabel('Y');
zlabel('Z');
title('3D plot with camlight, contour, and semitransparent surface');
shading interp;
grid on;
