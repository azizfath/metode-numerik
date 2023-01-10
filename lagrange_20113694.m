clc; clear; clear all; format compact;

fprintf('PROGRAM METODE NUMERIK - REGRESI LINEAR\n');
fprintf('Dibuat oleh :\n');
fprintf('FATHURRAHMAN NUR AZIZ (20.11.3694)\n');
fprintf('----------------------------------------------------------------------------------\n\n');

Xi = input('Masukan Xi = ');
Yi = input('Masukan Yi = ');

n = length(Xi);

SX = sum(Xi);
SY = sum(Yi);

Xi2 = Xi*Xi';
XiYi = Xi*Yi';

a = (n * XiYi - SX * SY)/(n * Xi2 - sx.^2);
b = (SY - a * SX)/n;

%fprintf('\n==============================================\n');
%fprintf('\t\tX\t\tY\n');
%fprintf('==============================================\n');
%for i=1:6
%    fprintf(' %d\t\t\t%.2f\t\t\t\t%.1f\n', suhu(i),konsen10(i),konsen20(i));
%end
%fprintf('==============================================\n');
%fprintf('Berapa konsentrasi yang larut jika Suhu 22.4?\n');
%fprintf('==============================================\n');
%fprintf('Penyelesaian:\n\n');
%fprintf('Karena terdapat 6 data dan memperhatikan ketelitian,\nmaka kita menggunakan ordo 5\n');

%fprintf('\nMaka konsentrasi larutan oksigen untuk suhu 22.4 pada konsentrasi klorida 20mg/L adalah = \n');
%b=subs(px20,x,22.4);
%fprintf('\tP5(%.1f) = %.10f\n',target,b);
%fprintf('\n\n\n');