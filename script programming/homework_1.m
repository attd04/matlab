clearvars;
close all;
clc;

% TASK : Feature recognition in an image (number)

% read image
img = imread('https://www.wikihow.com/images/thumb/0/0d/Write-Numbers-in-Standard-Form-Step-14-Version-2.jpg/v4-460px-Write-Numbers-in-Standard-Form-Step-14-Version-2.jpg'); 
%https://assets.bwbx.io/images/users/iqjWHBFdfxIU/ihbzQ8cHmcuY/v0/-1x-1.jpg

disp("Original Image")

% display image
figure; % creating figure
imshow(img);

% optical character recognition
% to recognize numbers
results = ocr(img, 'CharacterSet', '0123456789');

% display the recognized numbers
fprintf('Recognized Numbers: %s\n', results.Text);
