function [weight, adata] = augData(data, bias)
% Modify the weight vector (add the 'negative bias')
weight = [-bias; zeros(length(data(:,1)),1)];

% Modify the data matrix (add the leading '1')
adata = [ones(1,length(data)); data];
