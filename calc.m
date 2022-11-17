function calc
axis([-4 4 -10 10]);
hold on;
grid on;

[x0,y0]=ginput(1);
c = atan(y0) - x0;
plot(x0,y0,'r*');
[T,Y1]=ode45(@f,[x0,(pi/2-c)-0.01],y0);
[T1,Y2]=ode45(@f,[x0,(-pi/2-c)+0.01],y0);
plot(T,Y1,'b');
plot(T1,Y2,'b');
function z = f(x,y)
    z=1+y^2;
    end

end


