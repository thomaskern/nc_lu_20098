function [ ] = run( )

    num = 10;
    [x, target] = genData(num,2);
    target = target';
    
   alpha = trainSVM(x, target);
    
   weights = calculate_weights(x, target, alpha);
    
   bias = calc_bias(alpha, x,target);
%    draw_plot(x, target, alpha, weights, bias);
   
   [x2, target2] = genData(num,2);
   predictSVM(alpha, x, target, x2(2,:))
   
   rbfkernel(x2(2,:),x2(3,:), 1)

end

