function [  ] = percRun( )
% runs 1.1.3: both training and evaluation are done in this function
% reads the data from the textfile, augments the data, splits the data into
% test and eval sets and trains the perceptron. evaluates how bad it really
% is


% own random data
display('own random data');
[A,T] = genData(50,2);
[weight,adata] = augData(A,0.2);
[training_data, eval_data] = splitData(adata, 0.8);
[w] = percTrain(training_data,T,weight,100);

ed = ones(length(eval_data),4);

for i=1:length(eval_data)
    ed(i,:) = [eval_data(i,:) T(i)];
end
percEval(ed, w);



% text file data
display('textfile data')
X = dlmread('data-Gr8.txt');
[weight, adata] = augData(X, 1);
weight = weight(1:4,1);

total = 5;
dat = ones(total+1,4);

for i=0:total
    split = 0.9 - i/total;
    if split < 0
        split = 0;
    end
    [training_data, eval_data] = splitData(adata, split);
    [w] = percTrain(training_data(:,1:4),training_data(:,5),weight,100);
    miss = percEval(eval_data, w);
    dat(i+1,1) = split * 100; 
    dat(i+1,2) = length(eval_data) - miss;
    dat(i+1,3) = miss;
    dat(i+1,4) = 100 * miss / length(eval_data);
end
cnames = {'Split', 'Correct', 'False', 'Percentage False'};
columnformat = {'bank', [], [], 'numeric'}; 

f = figure('Position',[500 300 700 500]);
table = uitable('Data',dat,'ColumnWidth',{125}, 'ColumnName', cnames, 'Parent',f, 'ColumnFormat', columnformat);
set(table, 'Position', [0 200 702 200]);
end
