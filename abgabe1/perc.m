function [ y ] = perc( w,x )
% code for the perceptron
% checks if the perceptron is activated and returns 1/-1

% y = 1 / (1 + vpa(exp(1),-y)); % sigmoid function
y = sign(dot(w',x));

end

