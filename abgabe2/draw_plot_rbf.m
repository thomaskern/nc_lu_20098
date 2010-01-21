function [ ] = draw_plot_rbf( data, target, alpha, sigma )
 
fig = figure;
set(fig, 'Name', 'Nice');
 
 
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
%  

fig = figure;
axis([(min(data(:,1)) - 1) (max(data(:,1)) + 1) (min(data(:,2)) - 1) (max(data(:,2)) + 1)]);
xaxis = [(min(data(:,1)) - 2) (max(data(:,1)) + 2)];

axis
m = 100;
myax = axis;

tx = myax(1) + (myax(2)-myax(1))*(0:m)'/m;
ty = myax(3) + (myax(4)-myax(3))*(0:m)'/m;

Z = zeros(m+1,m+1);
for i=1:m+1,
    x_new = [tx,repmat(ty(i),m+1,1)];
    for j = 1:1:size(x_new,1)
        Z(j,i) = predictSVMRbfws( alpha, data, target, x_new(j), sigma );
    end;
end;
 

% ty
% Z'
h=contour(tx,ty,Z');
 
hold off;
drawnow(); % flushes event queque
 
end

