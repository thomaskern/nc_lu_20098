function [ ] = paintTraining( data, target )
clf();
hold on;


for j = 1:length(data)
    if target(j) == 1
        plot(data(j,1), data(j,2),'ro');
    else
        plot(data(j,1), data(j,2),'g+');
    end
end
grid;
axis equal;
hold off;
drawnow();
% pause(0.1);
end

