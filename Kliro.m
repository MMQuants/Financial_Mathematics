% zadacha ot kontrolni/proekt
function Kliro 

hold on;
grid on;
axis([-10,10,-10,10]);

syms x y z;
F = z^2-x*z-x^2+5*y;

Fz = diff(F, z);

[y,z]=solve(F, Fz,y,z);

x = linspace(-8,8,200);
plot(x, eval(y), 'k');

[x0,y0] = ginput(1);
plot(x0,y0,'r*')

end