x=-3:.125:3;
y=-3:.125:3;
[X,Y] = meshgrid(x,y);
Z = peaks(X,Y);
mesh(X,Y,Z);
axis([-3 3 -3 3 -10 5])

