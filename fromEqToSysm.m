function fromEqToSysm

[X,Y] = ode45(@f, [0,3]; [-1;13;0]);


Y(:,1)


    function z = f(x,y)
        
        z = [y(2); y(3); -13*y(2)-4*y(3)];

    end


end