function NonLinPP

tmax =10;
k = 1;
ak = (-1)^k;
bk = 0;

axis([ak-5;ak+5; bk-5;bk+5]);

plot(ak, bk, 'r');


x = ak-4:1:ak+4;
y = bk-4:1:bk+4;

[X,Y] = meshgrid(x,y);
DX = Y;
DY = sin(X+Y);
D = sqrt(DX.^2 + DY.^2);

quiver(X,Y,DX./D, DY./D, 'g')


end