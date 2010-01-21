function [ weights ] = calculate_weights(x, target, alpha)
    
%     prev = zeros(2,1);
%     
%      for k=1:10
%          prev = prev + ((x(k,:)' * target(k)) * alpha(k));
%      end
     
     weights = sum(diag(target.*alpha) * x);

    

end

