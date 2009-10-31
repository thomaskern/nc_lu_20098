function [ w ] = percTrain( X,t,w,maxIts )
gamma = 0.1;
for epoch=1:maxIts;
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
         epoch
%         w        
        miss        
    end
end

end

