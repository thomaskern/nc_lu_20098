function [  ] = percEval( )

X = dlmread('data-Gr8.txt');

percTrain(X(1:50,1:3),X(1:50,4),5);

end

