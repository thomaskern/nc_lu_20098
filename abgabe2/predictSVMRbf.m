function [ y_new ] = predictSVMRbf( alpha, X, target, x_new, sigma )
    c = 0;
   for i=1:size(X,1)
       c = c + alpha(i) * target(i) * rbfkernel(X(i,:),x_new,sigma);       
   end
   
   y_new = sign(c);

end

