% program metode secant
% FATHURRAHMAN NUR AZIZ
% 20.11.3694

clc; clear; clear all;
syms x;

disp('Program Metode Secant');
disp('Dibuat oleh');
disp('Fathurrahman Nur Aziz (20.11.3694)')
disp('----------------------------------');

p = input('Masukan Persamaan = ');
f = inline(p,'x');

a = input('Masukan interval A = ');
b = input('Masukan interval B = ');
E = input('Masukan toleransi error = ');
N = input('Masukan batas iterasi (0: tak terbatas) = ');
fprintf('\n');

garis;
fprintf(' i \t\t Ci \t\t\t B \t\t\t\t A \t\t\t\t f(Ci) \t\t    Error\n');
garis;

err=abs(b-a);
i = 1;
while err>E        
    c = [b-((f(b)*(b-a))/(f(b)-f(a)))];
    err = abs(c-b);

    fprintf(' %d \t%.10f \t%.10f \t%.10f \t%.10f \t%.10f\n',i,c,b,a,f(c),err);

    a = b;
    b = c;

    if N~=0 && i==N
        selesai(p,c);
        return
    end

    i = i+1;
end
selesai(p,c);


function garis
    fprintf('---------------------------');
    fprintf('---------------------------');
    fprintf('---------------------------\n');
end

function selesai(p,c)
    garis;
    fprintf('\nAkarnya adalah = %.10f\n\n', c);

    ezplot(p);
    grid;
    hold on;
    plot(c,0,'.');
end
