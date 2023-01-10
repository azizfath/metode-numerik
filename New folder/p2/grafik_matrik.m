clear; close all;
x=-2:0.1:2;
y=-2:0.1:2;
[X,Y]=meshgrid(x,y);
f=-X.*Y.*exp(-2*(X.^2+Y.^2));
mesh(X,Y,f);
xlabel('Sumbu x');
ylabel('Sumbu y');
zlabel('Sumbu z');
title('Contoh judul grafik');
legend('ini contoh legend') 
