function [ ] = run_rbf(  )

% closes all figures
    for i=0:10
        closereq;
    end

    C = 5;
    num = 12;
    [x, target] = genData(num,2);
    target = target';
    
   alpha_rbf = trainSVMRbf(x,target, C);
    weights = calculate_weights(x, target, alpha_rbf);
    
   bias = calc_bias(alpha_rbf, x,target);
   
   draw_plot_rbf(x,target,alpha_rbf,weights,bias);
   [x3, target3] = genDataRbf(num,2);
      
   c = 0;
   gama = 1000;
   
   for i=1:size(x3)
       predicted = predictSVMRbf(alpha_rbf, x, target, x3(i,:), gama);
    if predicted == target3(i)
    else
        c = c + 1;
        predicted;
        target3(i)
        i
        display('missed');
    end
   end
   
   disp('Misclassified: ');
   disp(c);
   
   

end

