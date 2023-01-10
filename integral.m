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

fprintf('\n\tMaka Jumlah Pias adalah = %d\n\n',n);
garis;
fprintf('\t\t\t\t\tKAIDAH TITIK TENGAH\n')
garis;
fprintf('Titik-titik untuk selang [%.1f,%.1f] untuk kaidah Titik Tengah:\n',a,b);
garis;
fprintf('\tr\t\t Xr\t\t\t  f(x)\n');
garis;
i=1/2;
for xr = a+h/2:h:b-h/2
    fx=f(xr);
    fprintf('\t%.1f \t%.2f\t\t%.5f\n',i,xr,fx);
    i=i+1;
end
garis;

fprintf('Hasil Integral menggunakan kaidah titik tengah\n');
fprintf('\t= %.2f*(',h);

sum = 0;
for xr = a+h/2:h:(b-h/2)-h
    fx=f(xr);
    fprintf('%.5f + ',fx);
    sum = sum + fx;
end
fb = f(b-h/2);
fprintf('%.5f)\n',fb);
sum = sum + fb;
result = h*sum;
fprintf('\t= %.5f\n',result);
fprintf('\n\n');

garis;
fprintf('\t\t\t\t\tKAIDAH TRAPESIUM\n')
garis;
fprintf('Titik-titik untuk selang [%.1f,%.1f] untuk kaidah Trapesium:\n',a,b);
garis;
fprintf('\tr\t\t Xr\t\t\t  f(x)\n');
garis;

i=0;
for xr = a:h:b
    fx=f(xr);
    fprintf('\t%d\t\t%.2f\t\t%.5f\n',i,xr,fx);
    i=i+1;
end
garis;

fprintf('Hasil Integral menggunakan kaidah trapesium\n');
fprintf('\t= %.2f/2*(',h);

fa = f(a);
sum = fa;
fprintf('%.5f + ',fa);
for xr = a+h:h:b-h
    fx=f(xr);
    fprintf('%.5f + ',2*fx);
    sum = sum + 2*fx;
end
fb = f(b);
fprintf('%.5f)\n',fb);
sum = sum + fb;

result = h/2*sum;
fprintf('\t= %.5f\n',result);
fprintf('\n\n');

function garis
    fprintf('===========================================================\n');
end
