function [ ] = run( )

    clc;
    num = 10;
    [x, target] = genData(num,2);
    target = target';
    
    alpha = trainSVM(x, target);
    
    weights = calculate_weights(x, target, alpha);
    
    alpha

%     draw_plot(x, target);
end

