function phasePortreitLinSystem
    A = [1,2;4,3];
    b = [1; -1];
    tmax = 5;
    
  

% namirane na ravnovestna tochka
    eqPoint = A\(-b);
    eqPoint

    plot(eqPoint(1), eqPoint(2), "r*")

    axis([eqPoint(1)-5, eqPoint(1)+5, eqPoint(2)-5, eqPoint(2)+5])

    % sobstveni vektori i stoinosti na matricata A

    [T,D] = eig(A)

    % sobstveni pravi
end