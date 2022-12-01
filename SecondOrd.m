function SecondOrd

x0 = 0;
b=20;
u0=3;
v0=0'

x = linspace(x0, b, 300);

u = dsolve('D2u = -4*u-1/2*Du', 'u(0)=3', 'Du(0)=0', "x");
u





end