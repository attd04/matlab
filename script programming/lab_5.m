
% LAB 5- data structures and opertion flow control
% 20222182

% ------------- 1) Data Structures ------------------
% a) make a structure containing your name, surname, group, and
%    a matrix that which contains your exam results
stud1.name = 'Autumn';
stud1.surname = 'Tiede';
stud1.group = 'EIRfuc-22';
stud1.exam = [8, 9, 9, 8, 10];

% b) add two more students to your structure
stud2.name = 'Whitney';
stud2.surname = 'Houston';
stud2.group = 'ITfuc-22';
stud2.exam = [9, 9, 9, 8, 7];

stud3.name = 'Chris';
stud3.surname = 'Hemsworth';
stud3.group = 'EIRfuc-22';
stud3.exam = [6, 7, 8, 6, 5];

% display all students

disp('Student 1: ')
disp(stud1)

disp('Student 2: ')
disp(stud2)

disp('Student 3: ')
disp(stud3)

% c) edit marks of a student

newExamResults = [5, 6, 5, 7, 5];
stud3.exam = newExamResults;

disp('Updated exam results for student 3: ')
disp(student3)


% ------------- 2) Operation flow control ------------------
% Three banks are giving loans from 10 to 20 thousand euros. Yearly
% interests of banks are 10%, 15% and 20%. Create a program which would
% print a table in a command window with 4 columns: loan size, which
% increases from 10K euro to 20K with a step of 1000 and interest of 3
% banks on these loan sizes. Print results using "bank" format
% use operators 'for' and 'disp' for this task

disp('Loan Size(EUR)  Bank 1 Interest   Bank 2 Interest  Bank 3 Interest');

% defining variables
loanMin = 10000;  
loanMax = 20000;  
step = 1000; 
loanSizes = loanMin:step:loanMax;

banksInterestRates = [0.10, 0.15, 0.20];  % interest rates for banks

% loop
for i = 1:length(loanSizes)
    loanSize = loanSizes(i); % assigns current loan size to variable
    % converts numbers to character array after calculating
    disp(['   ', num2str(loanSize), ... % displays and calculates 
          '         ', num2str(loanSize * banksInterestRates(1)), ...
          '          ', num2str(loanSize * banksInterestRates(2)), ...
          '          ', num2str(loanSize * banksInterestRates(3))]);
end


% ------------- COMP TASK- in SEPARATE tab ------------------
% Create a program which would ask a user to select 2 numbers x and y
x = input('Enter the value of x: ');
y = input('Enter the value of y: ');


% program should contain 20 iterations to generate natural numbers
% 1 <= m <= x and 1 <= n <= y
for iter = 1:20

% during each iteration a matrix of x * y size matrix of zeros is generated
    matrix = zeros(x, y); 
    
    % make random numbers
    m = randi(x);
    n = randi(y);
    
    % define A(m, n) to NaN
    matrix(m, n) = NaN;
    
    % display matrix in command window
    disp('Matrix:');
    disp(matrix);
    
    % pause 1 second
    pause(1);
    
    % clear command window and go to next iteration
    clc;
end

disp("Iterations Complete.")
