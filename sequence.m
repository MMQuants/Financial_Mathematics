function sequence
N = 400;
hold on
grid on
axis([-2 2 -2 2])
axis equal
    for i=1:N
        plot(cos(i), sin(i), 'r.')
        getframe;
    end;
end