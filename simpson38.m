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

fprintf('Hasil Integral menggunakan kaidah 3/8 simpson\n');
fprintf('\t= 3/8*%.2f*(',h);

fa = f(a);
fprintf('%.5f + ',fa);
fb = f(b);
sum = fa+fb;
xr = a;
for i=1:n-1
    xr=xr+h;
    fx=f(xr);
	sisa = mod(i,3);
    if sisa==0
        fprintf('%.5f + ',2*fx);
        sum = sum + 2*fx;
    else
        fprintf('%.5f + ',3*fx);
        sum = sum + 3*fx;
    end
end
fprintf('%.5f)\n',fb);

result = 3/8*h*sum;
fprintf('\t= %.5f\n',result);
fprintf('\n\n');

function garis
    fprintf('===========================================================\n');
end