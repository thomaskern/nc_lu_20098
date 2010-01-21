function [ ] = draw_plot( data, target, alpha, w, bias )
 
fig = figure;
set(fig, 'Name', 'Nice');
 
clf();
 
hold on;
 
for j = 1:length(data)
    color = 'ro';
    if target(j) < 1
        color = 'g+';        
    end
    
    plot(data(j,1), data(j,2),color);
    
    if alpha(j) > 0.01
        circle([data(j,1), data(j,2)], 1, 500, color);        
    end
end
grid;
axis equal;
 
w = [bias, w];
axis([(min(data(:,1)) - 1) (max(data(:,1)) + 1) (min(data(:,2)) - 1) (max(data(:,2)) + 1)]);
xaxis = [(min(data(:,1)) - 2) (max(data(:,1)) + 2)];
hyperplane = (-w(1) - w(2) .* xaxis) / w(3);
line(xaxis,hyperplane)
 
hold off;
drawnow(); % flushes event queque
 
 
 
end