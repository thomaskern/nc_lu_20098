function [ k ] = rbfkernel( x1, x2, sigma )

    k = exp(-norm(x1 - x2)^2/sigma^2);


end

