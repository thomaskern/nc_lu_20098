function [ training_data, eval_data ] = splitData( adata, percentage )
% splits the data in training data and eval data based on the percentage
% percentage has to be 0 <= percentage <= 1
training_data = adata(1:round(length(adata)*percentage),:);
eval_data = adata(1:round(length(adata) - length(training_data)),:);

end

