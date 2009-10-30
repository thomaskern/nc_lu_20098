function [ w ] = percTrain( X,t,maxIts )

gamma = 0.1;
w = zeros(size(X,2),1);
display(size(w));
for i=1:maxIts;
    miss = 0;
    for z=1:size(X,1)
        if perc(w,X(z)) ~= t(z) 
            miss = miss + 1;
            w = w + (gamma * X(z,:) * t(z))';     
        end
    end    
    if miss == 0
        break;
    else
        paintTraining(X,t);
        i
        w        
    end
end

end

