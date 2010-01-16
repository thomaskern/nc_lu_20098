function [ ] = run( )

    clc;
    num = 10;
    [x, target] = genData(num,2);
    
    alpha = trainSVM(x, target);
    
    alpha

    draw_plot(x, target);
end

