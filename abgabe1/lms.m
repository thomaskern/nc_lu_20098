function [ w  ] = lms( figure_id )
%Teil 2: Generalisierte lineare Regression
%Funktionsgenerierung (1.2.1)

fig = figure(figure_id);
set(fig,'Name','Aufgabe 1.2.1 - LMS');

G=8;
x=[0:0.1:5];
y= 2*x.^2 - G*x + 1;
plot(x, y, '--rs')

%Lernen einer Funktion mit quadratischer Regression

%Drei unäbhangige Variabeln (x0=1, x1=x, x2=x^2)
%Expected weights (1, -8, 2)
   
maxIts=200;
w = zeros(3,length(maxIts));
learnRate=0.01; %higher learn rates the algorithm does not converge!
len = length(x);
w(:,1) = [0 0 0]';
oii = zeros(length(maxIts),length(x));

for epoch=1:maxIts;
    for i=1:len
        %disp(sprintf('i = %d y = %f', i, y(i)));
        xi = [x(i) x(i) x(i)] .^ [0 1 2];
        oi = w(:,epoch)' * xi';
        oii(epoch,i) = oi;
        w(:,epoch) = w(:,epoch) + learnRate*(y(i) - oi)*xi';
    end

    w(:,epoch+1) = w(:,epoch);
   
    figure(fig);
    plot(x,y, 'LineWidth', 1)
    hold on
    plot(x,oii(epoch,:), 'Color', 'r')
    hold off
end

end

