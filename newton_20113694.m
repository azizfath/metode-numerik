% program metode newton
% FATHURRAHMAN NUR AZIZ
% 20.11.3694

clc; clear; clear all;
syms x;

disp('Program Metode Newton-Rhapson');
disp('Dibuat oleh');
disp('Fathurrahman Nur Aziz (20.11.3694)')
disp('----------------------------------');

p = input('Masukan Persamaan = ');
f = inline(p,'x');
g=inline(diff(p,x),'x');

a = input('Masukan tebakan A = ');
E = input('Masukan toleransi error = ');
N = input('Masukan batas iterasi (0: tak terbatas) = ');
fprintf('\n');

garis;
fprintf(' i \t\t Xi \t\t\t A \t\t\t    Error\n');
garis;

err=abs(f(a));
i = 1;
while err>E
    b = a-(f(a)/g(a));
    err = abs(f(a));

    fprintf(' %d \t%.10f \t%.10f \t%.10f\n',i,b,a,err);
    
    a = b;
    
    if N~=0 && i==N
        selesai(p,b);
        return
    end

    i = i+1;
end
selesai(p,b);

function garis
    fprintf('-----------------');
    fprintf('-----------------');
    fprintf('-----------------\n');
end

function selesai(f,x)
    garis;
    fprintf('\nAkarnya adalah = %.10f\n\n', x);

    ezplot(f);
    grid;
    hold on;
    plot(x,0,'.');
end
