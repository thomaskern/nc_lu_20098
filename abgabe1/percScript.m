[data, target] = genData(100,2);
clf();

hold on;
display(data);
plot(data(1:50,1), data(1:50,2),'ro');
plot(data(51:100,1), data(51:100,2),'g+');
hold off;