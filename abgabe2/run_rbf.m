function [ ] = run_rbf(  )
% closes all figures
    for i=0:10
        closereq;
    end
 sigma = 2;
    C = 5;
    num = 24;
    [x, target] = genDataRbf(num,2);
    target = target';

   alpha_rbf = trainSVMRbf(x,target, C);

   alpha_rbf
   weights = calculate_weights(x, target, alpha_rbf);
    
   bias = calc_bias(alpha_rbf, x,target);
   
   draw_plot_rbf(x,target,alpha_rbf,sigma);

%  C = 5;

%  num = 24;
%  [x, target] = genDataRbf(num,2);
%  target = target';
% 
%  train_data = x(1:20,:);
%  train_target = target(1:20,1);
%  
% alpha_rbf = trainSVMRbf(train_data,train_target, C);
% 
% weights = calculate_weights(train_data, train_target, alpha_rbf);
%  
% bias = calc_bias(alpha_rbf, train_data,train_target);
% 
% size(train_data)
% draw_plot_rbf(train_data,train_target,alpha_rbf, sigma);

%    draw_plot_rbf(x,target,alpha_rbf,weights,bias);
      
   c = 0;
   gama = 1;
   
%    for i=1:size(x3)
%        predicted = predictSVMRbf(alpha_rbf, x, target, x3(i,:), gama);
%     if predicted == target3(i)
%     else
%         c = c + 1;
%         predicted
%         target3(i)
%         i
%         display('missed');
%     end
%    end
%    
%    disp('Misclassified: ');
%    disp(c);

end
