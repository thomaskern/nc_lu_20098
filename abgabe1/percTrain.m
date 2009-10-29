function [ w ] = percTrain( X,t,maxIts )

scale = 2;
w = zeros(size(X,2),1);
display(size(w));
for i=1:maxIts;
    for z=1:size(X,1)
        if perc(w,X(z)) <= t(z) 
             for a=1:length(w);
                 w(a) = w(a) + scale * X(z,a) * t(z)                
             end            
        end
    end    
end

end

