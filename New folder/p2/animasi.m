clear;
[x,y] = meshgrid([-10:0.5:10]);
for j = 1:15
z = bessel(0,(j-1)*0.2 +sqrt(x.^2+y.^2));
surf(x,y,z)
axis([-10 10 -10 10 -.5 1])
M(j) = getframe;
end 
frame_order = [1:15 14:-1:1];
number_repeats = 7 ; 
movie(M, [number_repeats frame_order]);
