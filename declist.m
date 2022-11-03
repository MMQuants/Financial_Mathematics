function declist
    t = -50: 0.1 :50; a = 1;
    x=3*a.*t./(1+t.^3);
    y=3*a.*t.^2./(1+t.^3);
    hold on
    grid on
    axis([-10 10 -10 10])
    axis equal
    for i=1:length(t)
        plot(x(1,i),y(1,i),x(i),y(i), 'b.')
        getframe;
    end
end