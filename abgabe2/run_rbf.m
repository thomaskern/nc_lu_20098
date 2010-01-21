function [ ] = run_rbf(  )

% closes all figures
    for i=0:10
        closereq;
    end

    num = 12;
    [x, target] = genDataRbf(num,2);
    target = target';
    
   alpha_rbf = trainSVMRbf(x,target);
    weights = calculate_weights(x, target, alpha_rbf);
    
   bias = calc_bias(alpha_rbf, x,target);
   
   draw_plot_rbf(x,target,alpha_rbf,weights,bias);
%    [x3, target3] = genData(num,2);
%    predictSVM(alpha, x, target, x3(2,:));

end

