function [weight, adata] = augData(data, bias)
% Modify the weight vector (add the 'negative bias')
weight = [-bias; zeros(size(data,2),1)];

% Modify the data matrix (add the leading '1')
adata = [ones(1,length(data)); data']';

