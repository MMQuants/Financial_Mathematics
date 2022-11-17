function Kliro 

hold on;
grid on;
axis([-10,10,-10,10]);

syms x y z;
F = z^2-x*z-x^2+5*y;
diff(F, z)


end