function [ training_data, eval_data ] = splitData( adata, percentage )

training_data = adata(1:round(length(adata)*percentage),:);
eval_data = adata(1:round(length(adata) - length(training_data)),:);

end

