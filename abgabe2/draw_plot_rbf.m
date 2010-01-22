function [ ] = draw_plot_rbf( data, target, alpha, sigma )
 
fig = figure;
set(fig, 'Name', 'Nice');
 
 
hold on;
 
% for j = 1:length(data)
%     color = 'ro';
%     if target(j) < 1
%         color = 'g+';        
%     end
%     
%     plot(data(j,1), data(j,2),color);
%     
% end
% 
% %  

axis([(min(data(:,1)) - 1) (max(data(:,1)) + 1) (min(data(:,2)) - 1) (max(data(:,2)) + 1)]);
xaxis = [(min(data(:,1)) - 2) (max(data(:,1)) + 2)];


m = 50;
myax = axis;

tx = myax(1) + (myax(2)-myax(1))*(0:m)'/m;
ty = myax(3) + (myax(4)-myax(3))*(0:m)'/m;

Z = zeros(m+1,m+1);

for i=1:1:m+1,
    for j = 1:1:m+1
        Z(j,i) = predictSVMRbfws( alpha, data, target, [tx(j), ty(i)], sigma );
    end;
end;
 
Z'

% ty
% Z'
[C,h] =contour(tx,ty,Z');
 clabel(C,h);
 

grid;
hold off;
drawnow(); % flushes event queque
 
end

