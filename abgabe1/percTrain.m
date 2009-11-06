function [ w ] = percTrain( X,t,w,maxIts )
% trains the perceptron by adapting the weight
% weight will be returned
% weight will be passed into the function. will be augmented weight
% (1,0,0,...)

gamma = 0.1; % learning rate
for epoch=1:maxIts;
    miss = 0;% counts the miss classified samples per epoch
    for z=1:size(X,1)        
        if perc(w,X(z,:)) ~= t(z) 
            miss = miss + 1; 
            w = w + (gamma * X(z,:) * t(z))'; % adds 
        end
    end    
    if miss == 0
        break; % successfully classified every sample
    else        
        paintTraining(X,t, w); % paints the screw up
    end
end

end

