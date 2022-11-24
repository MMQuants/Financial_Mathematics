function Euler

x0=0;
y0=1;
b=2;

hold on; 
grid on;

y = dsolve('Du= -u*an(x)+ cos(x)^2')



end