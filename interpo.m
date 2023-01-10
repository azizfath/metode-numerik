clc; clear; clear all; clf;

x=1900:10:1990;
y=[157 171 188 194 205 217 225 241 251 267 ];
int_linier = interp1(x,y,x,'PCHIP');
plot(x,y,'o',x,int_linier,'k--')
grid
legend('data','linier')
xlabel('tahun')
ylabel('jumlah penduduk (juta)')
