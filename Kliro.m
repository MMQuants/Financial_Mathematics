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
plot(x0,y0,'r*');

    if y0>x0^2/4
        text(x0,y0," no solution");
    else
        y_sol = dsolve("(Dy)^2-x*Dy-x^2+5*y=0", "y(x0)=y0", 'x');
        plot(x, eval(y_sol),'b');
    end

end