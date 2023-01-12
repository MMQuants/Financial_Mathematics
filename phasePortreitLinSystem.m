function phasePortreitLinSystem
    A = [1,2;4,3];
    b = [1; -1];
    tmax = 5;
    
  

% namirane na ravnovestna tochka
    eqPoint = A\(-b);
    eqPoint

    plot(eqPoint(1), eqPoint(2), "r*")

    axis([eqPoint(1)-5, eqPoint(1)+5, eqPoint(2)-5, eqPoint(2)+5])

    hold on;
    grid on;

    % sobstveni vektori i stoinosti na matricata A

    [T,D] = eig(A);

    % sobstveni pravi

    if imag(D(1,1)) == 0
        xx = -10:1:10;

        plot(eqPoint(1)+xx*T(1,1), eqPoint(2)+xx*T(2,1), "k");

        plot(eqPoint(1)+xx*T(1,2), eqPoint(2)+xx*T(2,2), "k");
    end

    % generirane na nachalni uslovia
    % matricata X sydyrja purvite kooordinati
    % matricata Y sydyrja vtorite kooordinati

    x= eqPoint(1) -4:2:eqPoint(1)+4;   
    y= eqPoint(2) -4:2:eqPoint(2)+4;


    [X,Y] = meshgrid(x,y);
    
    % namirane reshenieto na sistemaata za t v intervala [-tmax, +tmax]
    % za vsqko edno ot nachalnite uslovia
    
    for i = 1: length(x)
        for j = 1:length(y) 
            [T1, Z1] = ode45(@rhs, [0, tmax], [X(i,j), Y(i,j)]);
            [T2, Z2] = ode45(@rhs, [0, tmax], [X(i,j), Y(i,j)]);
            
            plot(Z1(:,1), Z1(:,2), "r");
            plot(Z2(:,1), Z1(:,2), "r");
        end
    end


    function z = rhs(y,t)
       z = A*y +b;
    end




end