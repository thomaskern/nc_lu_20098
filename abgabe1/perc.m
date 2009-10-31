function [ y ] = perc( w,x )

% y = 1 / (1 + vpa(exp(1),-y)); % sigmoid function
if w * x' > 0
    y = 1;
else
    y = -1;
end

end

