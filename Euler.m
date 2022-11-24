function Euler

x0=0;
y0=1;
b=2;

hold on; 
grid on;

y = dsolve('Du= -u*tan(x)+ cos(x)^2', 'u(0)=1', 'x');
x = linspace(0,2,200);
plot(x, eval(y), 'k');

x= [];
y=[];
h = 0.5;

x=0:h:2;
y[1] = y0;

    for i=1:n-1
        y(i+1) = (1-h*tan(x(i))) * y(i) + h*cos(x(i))^2;
    end

x
y


end