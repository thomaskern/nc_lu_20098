function [ ] = run( )

    clc;
    num = 10;
    [x, target] = genData(num,2);
    target = target';
    
    alpha = trainSVM(x, target);
    
    weights = calculate_weights(x, target, alpha);
    
    prev = zeros(2,1);
    
     for k=1:10
         prev = prev + ((x(k,:) * target(k)) * alpha(k)) * x';
     end
    
    weights
    x
    weights'
    x * weights'
    
     
    

    
    dot(x,weights')
    (diag(weights) * x')
%     alpha

    draw_plot(x, target, alpha, weights);
end

