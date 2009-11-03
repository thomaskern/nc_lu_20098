function [  ] = percRun( )
% runs 1.1.3: both training and evaluation are done in this function
% reads the data from the textfile, augments the data, splits the data into
% test and eval sets and trains the perceptron. evaluates how bad it really
% is
X = dlmread('data-Gr8.txt');

[weight, adata] = augData(X, 1);
[training_data, eval_data] = splitData(adata, 0.8);

percTrain(training_data(1:50,1:4),training_data(1:50,5),weight,100);
percEval(eval_data);

end