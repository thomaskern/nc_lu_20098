function [ y ] = perc( w,x )

bias = 0.5;

% y = 1 / (1 + vpa(exp(1),-y)); % sigmoid function
if w * x' + bias * 1 > 0
    y = 1;
else
    y = -1;
end

end

