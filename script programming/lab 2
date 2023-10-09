clearvars
close all


% variant 2
% 20222182

% ----------- Task 1: vector --------------
% a) create vector column starting -pi/2, ending 3pi w/ 0.5 step
VA = sort((-pi/2):0.5:(3*pi), 'ascend')'

% b) find square of each member
VB = VA.^2

% c) calculate 3rd vector, which is sin of summation of a) and b)
% d) display the answer as a row in command window

VCD = sin(VA)'



% ----------- Task 2: matricies --------------
% a) use function rand ot create matrix Z with 9 members
Z = rand(9)

% b) remove second row
Z(2,:) = []

% c) transpose the matrix
Z_Transposed = Z'



% ----------- Task 3: practical applications --------------

E1 = 60;  
E2 = 6;   
E3 = 48; 
R1 = 30; 
R2 = 12;  
R3 = 16;  
R4 = 14;  
R5 = 30; 
R6 = 5;   
Rn = 1; 
Ri1 = 1;

% matrix a
A = [ 0, -R1*(-1), ((R1*R3/R1+R3)+R4+(R1*R2/R1+R2)+R3);
     Ri1 + R1 + (R5*R6/R5+R6), R2*1 , 0;
     -1, -1, 1]

% vector b
B = [(-E3 + E2); E1; 0]

% solve
X = A \ B

% print values
I1 = X(1)
I2 = X(2)
I3 = X(3)

% check if correct
check = -I1 -I2 +I3



% ----------- Task 4: Indexing of Vector Elements --------------

disp("  ")
disp('Please enter the vector (e.g., [1 2 3]):');
user_input = input('Vector A = ')

% calculate number of elements put in
num_elements = numel(user_input);

% initialize vector of same size for reversed order (logical index)
reversed = zeros(size(user_input));

% matrix indexing- reverse vector
for i = 1:num_elements
    reversed(i) = user_input(num_elements - i + 1);
end

disp("Reversed Vector")
disp(reversed)
