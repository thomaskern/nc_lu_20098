clc;

display('Aufgabe 1.1.1');
percScript(1);

display('Aufgabe 1.1.2 and Aufgabe 1.1.3');
percRun(2);

display('Aufgabe 1.2.1');
lms(15, 0.012, 0, 300, 1);

gammas = [0.001:0.002:0.013];
sserrors = zeros(length(gammas),1);
for(i=1:length(gammas))
    [w, sser, epochs_needed] = lms(15+i, gammas(i), 0, 500, 0);
    sserrors(i) = sser;
end

sserrors;

gammas = [0.001:0.002:0.013];
sserrors = zeros(length(gammas),1);
epochs = zeros(length(gammas),1);
for(i=1:length(gammas))
    [w, sser, epochs_needed] = lms(15, gammas(i), 0.0001, 1000, 0);
    sserrors(i) = sser;
    epochs(i) = epochs_needed;
end