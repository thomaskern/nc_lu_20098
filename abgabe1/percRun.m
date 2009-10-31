function [  ] = percRun( )

X = dlmread('data-Gr8.txt');

[weight, adata] = augData(X, 1, 1);
[training_data, eval_data] = splitData(adata, 0.8);

percTrain(training_data(1:50,1:4),training_data(1:50,5),weight,150);
percEval(eval_data);

end