clc; clear;
x_value = "What is the value for x? ";
x = input(x_value)

x0= 0:0.01:exp(x);

y0= 0*x0;

% defining first function with parameters
x1= 0:0.01:1;
y1= exp(x1)

% defining second function with parameters
x2= 1:0.01:exp(x);
y2= -log(x2);

% defining third function with parameters
x3= 0.01:exp(x);
y3= ((exp(2))/(x3^3))

% plotting
plot(x0,y0,'r.',x1, y1, x2, y2, x3, y3)
grid on
syms x y1 y2 y3

y1= exp(x);
y2= -ln(x);
y3= ((exp(2))/(x^3));

S1= abs(int(y1, 0,1));
S2= int(y2,1,exp(x));
S3= int(y3,x,exp(x));
S= S1+S2+S3
eval(S)
