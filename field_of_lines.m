
%{
   % uslovie
nachertaite poleto ot pravi na 
a) uravnenieto: y' = xy 
v kvadrata b -5<= x <=5
5<= y <=5
b) v sashtia prozorec nachertava grafika
%/
%}


function PlotSlopes

    x = linspace(-5,5,30);
    y = linspace(-5,5,30);
    
    hold on;
    axis ([-6,6,-6,6]);
    delta = 0.2;

    for i = 1: length(x)
        for j=1:length(y)
            fValue = f(x(i), y(j));
            scale = delta / sqrt(1+fValue^2);
            plot([x(i)-scale, x(i)+scale], ...
                 [y(j)-scale*fValue, y(j)+scale*fValue], 'k')
            plot(x(i),y(j))
        end
    
    end

    [x0,y0] = ginput(1);
    plot(x0,y0, 'bo');

    [X1, Y1] = ode45(@f, [x0,5], y0);
    [X2, Y2] = ode45(@f, [x0,-5], y0);
    plot(X1, Y1, "r", X2, Y2, "b")




        function z = f(x,y)
            % z =
            z = x*y;
        end


end

    [x0,y0] = ginput(1);
    [X1, Y1] = ode45(@f, [x0,5], y0);
    X1
    Y1
