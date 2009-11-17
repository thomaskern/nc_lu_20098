function [ w, sse, epochs_needed] = lms( figure_id, gamma, min_sse, maxIts, doPlot)
%Teil 2: Generalisierte lineare Regression
%Funktionsgenerierung (1.2.1)

fig = figure(figure_id);
set(fig,'Name','Aufgabe 1.2.1 - LMS');

G=8;
x=[0:0.1:5];
y= 2*x.^2 - G*x + 1;
plot(x, y, '--rs')

%Lernen einer Funktion mit quadratischer Regression

%Drei unabhangige Variabeln (x0=1, x1=x, x2=x^2)
%Expected weights (1, -8, 2)
   
w = zeros(3,length(maxIts));
%learnRate=0.01; %higher learn rates the algorithm does not converge!
len = length(x);
w(:,1) = [0 0 0]';
oii = zeros(length(maxIts),length(x));

for epoch=1:maxIts;
    sse = 0;
    for i=1:len
        xi = [x(i) x(i) x(i)] .^ [0 1 2];
        oi = w(:,epoch)' * xi';
        oii(epoch,i) = oi;
        w(:,epoch) = w(:,epoch) + gamma*(y(i) - oi)*xi';
        sse = sse + ((y(i) - oi)^2);
    end

    sse = sse / 2;
    w(:,epoch+1) = w(:,epoch);
    
    if(doPlot==1)
        figure(fig);
        plot(x,y, 'LineWidth', 1)
        hold on
        plot(x,oii(epoch,:), 'Color', 'r')
        hold off
    end
    
    if(min_sse ~= 0)
       %check see values
       if(sse <= min_sse)
           epochs_needed = epoch;         
           return;
       end
    end    
end

epochs_needed = -1;
end

