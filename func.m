function [] = func(x0,y0,r)
t = linspace(0,5*pi,200);
x = r+cos(t)+x0;
y = r+sin(t)+y0;
plot(x,y)
end