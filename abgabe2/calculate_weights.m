function [ weights ] = calculate_weights(x, target, alpha)
     weights = sum(diag(target.*alpha) * x);
end

