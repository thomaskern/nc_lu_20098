function [ ] = paintTraining( data, target,w )
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

axis([(min(data(:,2)) - 1) (max(data(:,2)) + 1) (min(data(:,3)) - 1) (max(data(:,3)) + 1)]);
xaxis = [(min(data(:,2)) - 2) (max(data(:,2)) + 2)]
hyperplane = (-w(1) - w(2) .* xaxis) / w(3)
line(xaxis,hyperplane)

hold off;
drawnow(); % flushes event queque

end

