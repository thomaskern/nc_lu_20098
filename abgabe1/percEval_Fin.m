function [ miss ] = percEval_Fin(eval_data, w, figure_id, figure_name)

fig = figure(figure_id);
set(fig, 'Name', figure_name);

clf();
hold on;
miss = 0;
for i=1:length(eval_data)
 
  if perc(eval_data(i,1:size(eval_data,2)-1),w) ~= eval_data(i,size(eval_data,2))
    plot(eval_data(i,2), eval_data(i,3),'r+'); 
    miss = miss + 1;
  else
	plot(eval_data(i,2), eval_data(i,3),'bo');
 end
 
end

grid;
axis equal;

axis([(min(eval_data(:,2)) - 1) (max(eval_data(:,2)) + 1) (min(eval_data(:,3)) - 1) (max(eval_data(:,3)) + 1)]);
xaxis = [(min(eval_data(:,2)) - 2) (max(eval_data(:,2)) + 2)];
hyperplane = (-w(1) - w(2) .* xaxis) / w(3);
line(xaxis,hyperplane)

hold off;
drawnow(); % flushes event queque


end

