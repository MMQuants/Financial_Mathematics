function SecondOrd

x0 = 0;
b=20;
u0=3;
v0=0'

x = linspace(x0, b, 300);

u = dsolve('D2u = -4*u-(1/2)*Du', 'u(0)=u0', 'Du(0)=v0', "x");

plot(x, eval(u),"k")

h=0.5;
x=[];
x = x0:h:b;

y=[];
y(1)=u0;
y(2) = u0+h*v0+h^2/2*f(x0,u0,v0);

for i = 2:length(x)-1
    y(i+1) = 2*y(i)-y(i-1)+h^2*f(x(i),y(i),(y(i)-y(i-1)));

end

    function z = f(p,q,t)
        z = -4*q-1/2*t


    end



end