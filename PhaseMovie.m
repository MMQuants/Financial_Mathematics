function PhaseMovie

% inputs
    tmax = 10;
    a=1;
    b = 0.3;
    c=1;
    d =0.2;
    
    axis([-1, c/d+15, -1, a/b+10]);
    hold on;
    grid on;
    plot(0,0,'r*', c/d, a/b, 'r*')

    % vector field
    x = -1:0.5:c/d+15;
    y = -1:0.5:a/b+10;
    [X,Y] = meshgrid(x,y);
    DX = a*X - b*X.*Y;
    DY = -c*Y + d*X.*Y;
    D = sqrt(DX.^2+DY.^2);
    quiver(X,Y,DX./D, DY./D, 0.5, 'k')

    % tragectory
    [x0, y0] = ginput(1);
    plot(x0,y0,'go');
    [T,Z] = ode45(@ff, [0,tmax], [x0,y0]);

    for i = 1:length(T)
        plot(Z(1:i,1), Z(1:i,2), 'r');
        getframe;
    end


    function z = ff(t,v)
        z = [a*v(1) - b*v(1)*v(2); -c*v(2)+d*v(1)*v(2)];
        
    end


end