clc;
clearvars;
close all;

% lab 6
% variables, scripts, and functions

% ------------- 1) creating functions ------------
% create a matlab function that is defined by the matlab rules for
% declaring functions. Function should contain short description, usable w/
% help command which contains info on how the function works, is used, and
% what variables are used

% FUNCTION: calculates temperature in fahrenheit, when temp in kelvin is
% given
% function inputs; temp in kelvin
% function outputs temp in F
% function name kelv2far

kelvin = input("Enter any number: ");
fahrenheit = kelv2far(kelvin);
disp(['Temperature in Fahrenheit: ', num2str(fahrenheit)]);
