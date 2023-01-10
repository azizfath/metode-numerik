clear all;
close all;
clc;

Xi=[2012 2013 2014 2015 2017 2018];
Yi=[6.03 5.56 5.01 4.88 5.07 5.17];

%Yi=[1 2 3 4 6 7];
prediksi=2016;

Sx=sum(Xi);
Sy=sum(Yi);
X2 = Xi*Xi';
XiYi = Xi*Yi';
N = length(Xi);
%disp(N);

b=(N*XiYi-Sx*Sy)/(N*X2-Sx^2);

a=(X2*Sy-Sx*XiYi)/(N*X2-Sx^2);

disp(a);
disp(b);

hasilprediksi = a+(b*prediksi);
disp(hasilprediksi);

%xx=2012:2018;

yy=b*Xi+a;

plot(Xi,Yi,'o',Xi,yy)
