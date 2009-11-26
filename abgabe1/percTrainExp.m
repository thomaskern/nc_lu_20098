function [en w] = percTrainExp( X,t,w,maxIts, figure_id, figure_name, gamma)
% gamma is the learning rate
% trains the perceptron by adapting the weight
% weight will be returned
% weight will be passed into the function. will be augmented weight
% (1,0,0,...)


for epoch=1:maxIts;
    miss = 0;% counts the miss classified samples per epoch
    w_old = w;
    for z=1:size(X,1)        
        if perc(w,X(z,:)) ~= t(z) 
            miss = miss + 1; 
            w = w + (gamma * X(z,:) * t(z))'; % adds 
        end
    end    
    
    
    
    if miss == 0
        en = epoch;
        break; % successfully classified every sample
    else        
        %paintTraining(X,t, w, figure_id, figure_name); % paints the screw up
    end
end

end

