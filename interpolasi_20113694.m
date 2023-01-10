% program interpolasi linear
% FATHURRAHMAN NUR AZIZ
% 20.11.3694

clc; clear; clear all;

x = input('masukan nilai x = ');
x1 = input('masukan nilai x1 = ');
y1 = input('masukan nilai y1 = ');
x0 = input('masukan nilai x0 = ');
y0 = input('masukan nilai y0 = ');

y = y0+(((y1-y0)/(x1-x0))*(x-x0));

fprintf('\nNilai Y adalah = %f\n\n', y);