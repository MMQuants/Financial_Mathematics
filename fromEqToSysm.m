function fromEqToSysm

[X,Y] = ode45(@f, [0,3], [-4;13;0]);


plot(X, Y(:,1), X,Y(:,2), X,Y(:,3))


    function z = f(x,y)
        
        z = [y(2); y(3); -13*y(2)-4*y(3)];

    end


end