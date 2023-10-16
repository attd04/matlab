clc;
clearvars;
close all;

% lab 6
% variables, scripts, and functions

% -------- COMP TASK -----------
% Argument checking in functions
% define a function that accepts a different number of i/o's

% if one input in given to the function, then it is squared
% and returned to the output
% if two inputs are given, first is squared and second is ^3
% then the sum of these two is returned to output

% one input
result1 = specfunc(3);
disp('result with one input:');
disp(result1);

% two inputs
result2 = specfunc(2, 3);
disp('result with two inputs:');
disp(result2);

% varargin = variable # of arguments (input)
% read by nargin = number of inputs

function result = specfunc(varargin)
    % validate number of inputs to executing function
    narginchk(1, 2);
    
    if nargin == 1
        % if one input, square it
        result = varargin{1}^2;
        
    elseif nargin == 2
        % if two inputs, square first, cube second & sum them
        result = varargin{1}^2 + varargin{2}^3;
    end
end
