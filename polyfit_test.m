clc; clear; clear all; clf;

x = input('input x = ');
y = input('input y = ');
o = input('input orde = ');

plot(x,y,'o');
p=polyfit(x,y,o)

kurv1_=polyval(p,x)

hold on;
plot(x,y,'.b',x,kurv1_,'k--');
grid on;
