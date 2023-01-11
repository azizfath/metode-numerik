clc; clear all; tic; format compact;

syms x;
fprintf('Simpson 3/8\n');
p = input('Persamaan     = ');
f = inline(p,'x');
a = input('batas kiri    = ');
b = input('batas kanan   = ');
n = input('jumlah pias   = ');
h = (b-a)/n;
x1 = a+h;
sigma = f(a)+f(b);
for i=1:(n-1)
    sisa=mod(i,3);
    if sisa==0
        sigma = sigma + 2*f(x1);    
    else
        sigma = sigma + 3*f(x1);    
    end
    x1 = x1+h;
    result = 3/8*h*(sigma);
end

fprintf('nilai I  = %6.5f\n',result);