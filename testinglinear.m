%mendeklarasikan titik-titik sampel (x,v)
x = 0:pi/4:2*pi;
v = cos(x);
%mendeklarasikan titik di sumbu-x untuk interpolasi
xq = 0:pi/16:2*pi;
%interpolasi dan plot
subplot(2,2,1)
vq1 = interp1(x,v,xq,'nearest');
plot(x,v,'ro',xq,vq1,'b:.');
title('Interpolasi nearest');
subplot(2,2,2)
vq2 = interp1(x,v,xq,'linear');
plot(x,v,'ro',xq,vq2,'b:.');
title('Interpolasi linear');
subplot(2,2,3)
vq3 = interp1(x,v,xq,'spline');
plot(x,v,'ro',xq,vq3,'b:.');
title('Interpolasi spline');
subplot(2,2,4)
vq4 = interp1(x,v,xq,'cubic');
plot(x,v,'ro',xq,vq4,'b:.');
title('Interpolasi cubic')
