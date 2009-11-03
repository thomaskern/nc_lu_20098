function [ ] = paintTraining( data, target )
clf();
hold on;


for j = 1:length(data)
    if target(j) == 1
        plot(data(j,2), data(j,3),'ro');
    else
        plot(data(j,2), data(j,3),'g+');
    end
end
grid;
axis equal;
hold off;
drawnow(); % flushes event queque
end

