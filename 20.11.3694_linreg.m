clc; clear; clear all; format compact;

fprintf('PROGRAM METODE NUMERIK - REGRESI LINEAR\n');
fprintf('Dibuat oleh :\n');
fprintf('FATHURRAHMAN NUR AZIZ (20.11.3694)\n');
fprintf('----------------------------------------------------------------------------------\n\n');

Xi = [-10 -8 -6 -4 -2 0 2 4 6 8 10];
Yi = [0.0000 0.0001 0.0045 0.0907 0.5488 1.0000 0.5488 0.0907 0.0045 0.0001 0.0000];

fprintf('X = [');
fprintf('%g, ', Xi(1:end-1));
fprintf(' %g]', Xi(end));
fprintf('\nY = [');
fprintf('%g, ', Yi(1:end-1));
fprintf(' %g]', Yi(end));

n = length(Xi);

SX = sum(Xi);
SY = sum(Yi);

Xi2 = Xi*Xi';
XiYi = Xi*Yi';

a = (Xi2 * SY - SX * XiYi)/(n * Xi2 - SX^2);
b = (n * XiYi - SX * SY)/(n * Xi2 - SX^2);
fprintf('\n\nDengan Rumus regresi didapatkan : ');
fprintf('\n');
fprintf('\ta = %.7f\n', a);
fprintf('\tb = %.7f\n\n', b);
fprintf('Maka persamaan Regresi Linear:\n\t f(X) = %2.7f + %2.7fx\n\n\n',a,b);

fprintf('==========================\n');
fprintf('\t Titik Regresi\n');
fprintf('==========================\n');
fprintf('\tX\t\t\t  Y\n');
fprintf('==========================\n');
for x=Xi(1):2:Xi(end)
	yy=a+b*x;
    fprintf('  %.3f \t %10.7f \n', x, yy);
end
fprintf('==========================\n\n\n');

xx=Xi(1):Xi(end);
yy=a+b*xx;
plot(Xi,Yi,'o',xx,yy);
title('GRAFIK REGRESI');
xlabel('x');
ylabel('y');
grid on;