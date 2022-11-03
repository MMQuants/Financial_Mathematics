function [] = plotCurve()

t = linspace(0,20*pi,1000);
x = cos(t);
y = sin(t);
z=t;

         for i = 1:length(t)
             plot3(x(1:i),y(1:i),z(1:i),x(i),y(i),z(i),'ro');
             axis([-2,2,-2,2,0,200]);
             grid on;
             getframe;


         end

end