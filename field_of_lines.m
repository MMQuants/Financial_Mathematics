


function PlotSlopes

    x = linspace(-5,5,30);
    y = linspace(-5,5,30);
    
    hold on;
    axis ([-6,6-6,6]);
    delta = 0.2;

    for i = 1: length(x)
        for j=1:length(y)
            fValue = f(x(i), y(j));
            scale = delta / sqrt(1+fValue^2)
            plot([x(i)-scale, x(i)+scale], ...
                 [y(j)-scale*fValue, y(j)+scale*fValue], 'k')
            plot(x(i),y(j))
        end
    
    end

        function z = f(x,y)
            z = x*y;
        end


end