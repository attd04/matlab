clearvars
clear 
close all 


% Task 2
A = [2 9 0 0; 0 4 1 4; 7 5 5 1; 7 8 7 4]
b = [-1; 6; 0; 9]
a = [3 -2  4 5]


% Task 3
a1 = A * b
b1 = a + 4
c = b * a
d = a .* b'
e = A * a'


% Task 4
AA = A*A
AA2 = A^2
A2 = A.^2

% A*A and A^2 have the same values and compute the same thing
% Using A.^2 raises each value to ^2; element wise power


% Task 5
% 2nd and 3rd rows of A
submatrix = A(2:3,:)


% Task 6
x = A\b

ch = A*x
