function [ y_new ] = predictSVMRbf( alpha, X, target, x_new )

   bias = calc_bias(alpha, X,target);
   y_new = sign(dot(calculate_weights(X,target,alpha)',x_new) + bias);


end

