%simpson 1/3 dengan tabel 
clc;clear;
tic;
%syms x;

fprintf('1/3 simpson\n');
n=input('jumlah bagian  n = ');
x = zeros(n,1);
F = zeros(n,1);
disp('masukkan nilai satu persatu ');
for i=1:n
    fprintf('data ke -%2d\n',i);
    x(i)= input(' X:  ');
    F(i)= input(' y:  ');
    fprintf('\n');
    
end

h=x(2)-x(1);
sum = F(1) + F(end);
for xr=2:(n-1)
    
    sisa=mod(xr,2);
    if sisa==0
        sum = sum + 4*F(xr);    
    else
        sum = sum + 2*F(xr);    
    end
    result = h*(sum)/3;
end
fprintf('nilai I  = %6.5f\n',result);