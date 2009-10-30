function [  ] = percRun( )

X = dlmread('data-Gr8.txt');

training_data = X(1:round(length(X)*0.8),1:4);
eval_data = X(1:round(length(X) - length(training_data)),1:4);

percTrain(training_data(1:50,1:3),training_data(1:50,4),100);
percEval(eval_data);

end