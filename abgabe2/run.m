function [ ] = run( )

    % closes all figures
    for i=0:10
        closereq;
    end
    
    num = 10;
    [x, target] = genData(num,2);
    target = target';
    
   alpha = trainSVM(x, target);
    
   weights = calculate_weights(x, target, alpha);
    
   bias = calc_bias(alpha, x,target);
   draw_plot(x, target, alpha, weights, bias);
   
   [x2, target2] = genData(num,2);
   predictSVM(alpha, x, target, x2(2,:));
   
   
   
   run_rbf;
end

