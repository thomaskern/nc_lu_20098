clc;


for i=0.1:0.01:1
    display(sprintf('Experiment with gamma=%i',i));
    [data, target] = gendata(100,2);
    [weight, adata] = augData(data, 1);
    percTrainExp(adata,target,weight,100, 1, 'Experiment',i);
end
