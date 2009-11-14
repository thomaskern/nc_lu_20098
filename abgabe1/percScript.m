function [ ] = percScript (figure_id)
[data, target] = genData(100,2);
[weight, adata] = augData(data, 0.2);
paintTraining(adata,target, weight, figure_id,'Aufgabe 1.1.1 - Datengeneration');
end


