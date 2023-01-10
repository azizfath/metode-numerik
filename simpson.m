clc; clear all; tic; format compact;

syms x;
fprintf('Simpson 1/3\n');
p = input('Persamaan     = ');
f = inline(p,'x');
a = input('batas kiri    = ');
b = input('batas kanan   = ');
n = input('jumlah pias   = ');
h = (b-a)/n;
x1 = a+h;
sigma = f(a)+f(b);
for i=1:(n-1)
    sisa=mod(i,2);
    if sisa==1
        sigma = sigma + 4*f(x1);    
    else
        sigma = sigma + 2*f(x1);    
    end
    x1 = x1+h;
    result = h*(sigma)/3;
end

fprintf('nilai I  = %6.5f\n',result);