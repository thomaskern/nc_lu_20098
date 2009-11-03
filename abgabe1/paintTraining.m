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
v = [w(1) -w(3) w(2)];
p = cross(w,v);

% transformation from homogenious coordinates to 'normal' ones
pn = [p(2)/p(1) p(3)/p(1)];
pn
% plot the weight vector
plot([pn(1) pn(1)+w(2)],[pn(2) pn(2)+w(3)],'b-');

% plot the separating hyperplane
plot([pn(1) pn(1)+v(2)*10],[pn(2) pn(2)+v(3)*10],'k-');
plot([pn(1) pn(1)-v(2)*10],[pn(2) pn(2)-v(3)*10],'k-');

axis equal;
hold off;
drawnow(); % flushes event queque
end

