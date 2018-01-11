clc;
clear all;
close all;
% function is : y = 2 * n for n belonging to -3 to 3, otherwise 0.
range = -10:10;
x = 2 * range .* [range >= -3] .* [range <= 3];

stem(range,x)
title('Discrete time Step Function')
xlabel('Samples')
ylabel('Function')