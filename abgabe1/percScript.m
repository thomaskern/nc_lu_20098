[data, target] = genData(100,2);
paintTraining(data,target)
[weight, adata] = augData(data, 1,0);
size(weight)
weight
size(adata)
size(data)
zeros(size(data(:,1),2),1)