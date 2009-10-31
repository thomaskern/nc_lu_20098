[data, target] = genData(100,2);
paintTraining(data,target)
[weight, adata] = augData(data, 1,0);
display(size(weight))
display(weight)
display(size(adata))
display(size(data))
display(size(data,2))
display(zeros(size(data(:,1),2),1))