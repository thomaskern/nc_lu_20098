function [ bias ] = calc_bias( alpha, X, t)
c = 0;
b = 0;
w0 = calculate_weights(X,t,alpha);

for j = 1:length(X)
    if alpha(j) > 0.01
       b = b + ((1/t(j)) - dot(X(j,:)',w0));
       c = c + 1; 
    end
end

bias = (1 / c) * b;

end

