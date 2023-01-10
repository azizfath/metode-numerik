clc; clear; clear all; format compact;

fprintf('PROGRAM METODE NUMERIK - INTEGRASI NUMERIK\n');
fprintf('Dibuat oleh :\n');
fprintf('FATHURRAHMAN NUR AZIZ (20.11.3694)\n');
fprintf('--------------------------------------------\n\n');

syms x;
p = input('Masukan Persamaan    = ');
f = inline(p,'x');
a = input('Masukan Batas Bawah  = ');
b = input('Masukan Batas Atas   = ');
h = input('Masukan Lebar Pias   = ');

n = (b-a)/h;

fprintf('Hasil Integral menggunakan kaidah 1/3 simpson\n');
fprintf('\t= %.2f/3*(',h);

fa = f(a);
fprintf('%.5f + ',fa);
fb = f(b);
sum = fa+fb;
i = 1;
for xr = a+h:h:b-h
    fx=f(xr);
	sisa = mod(i,2);
    if sisa==1
        fprintf('%.5f + ',4*fx);
        sum = sum + 4*fx;
    else
        fprintf('%.5f + ',2*fx);
        sum = sum + 2*fx;
    end
    i=i+1;
end
fb = f(b);
fprintf('%.5f)\n',fb);

result = h/3*sum;
fprintf('\t= %.5f\n',result);
fprintf('\n\n');

function garis
    fprintf('===========================================================\n');
end