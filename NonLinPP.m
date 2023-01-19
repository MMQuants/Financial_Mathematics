function NonLinPP

tmax =10;
k = 1;
ak = k*pi;
bk = 0;

axis([ak-5;ak+5; bk-5;bk+5]);
hold on;
grid on;
plot(ak, bk, 'r');

x = ak-4:1:ak+4;
y = bk-4:1:bk+4;

[X,Y] = meshgrid(x,y);
DX = Y;
DY = sin(X+Y);
D = sqrt(DX.^2 + DY.^2);

quiver(X,Y,DX./D, DY./D, 'b')

for i = 1:length(x)

    for j = 1: length(y)
        [T1, Z1] = ode45(@ff, [0,tmax], [X(i,j), Y(i,j)]);
        [T2, Z2] = ode45(@ff, [0,-tmax], [X(i,j), Y(i,j)]);

        plot(Z1(:,1), Z1(:,2), 'r');
        plot(Z2(:,1), Z2(:,2), 'b');
    end
end

    function z = ff(t,v)

        z = [v(2); sin(v(1)+v(2))];

    end


end