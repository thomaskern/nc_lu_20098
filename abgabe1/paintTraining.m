function [ ] = paintTraining( data, target,w, figure_id, figure_name )

fig = figure(figure_id);
set(fig, 'Name', figure_name);

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

axis([(min(data(:,1)) - 1) (max(data(:,1)) + 1) (min(data(:,2)) - 1) (max(data(:,2)) + 1)]);
xaxis = [(min(data(:,1)) - 2) (max(data(:,1)) + 2)];
line(w(1),w(2));

hold off;
drawnow(); % flushes event queque

end

