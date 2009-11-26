clc;

c = 1;

for j = 0:100
    for i=0.1:0.01:1
         display(sprintf('Experiment with gamma=%i',i));
        [data, target] = gendata(100,2);
        [weight, adata] = augData(data, 1);
        [en w] = percTrainExp(adata,target,weight,100, 1, 'Experiment',i);
        K(c,1) = i;
        K(c,2) = en;
        c = c + 1;
    end
end