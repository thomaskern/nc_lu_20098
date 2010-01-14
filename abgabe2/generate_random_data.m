function [data] = generate_random_data(n,d,mean,stddev)
% generates random data. mean and standard deviation can be passed
% n, d define the dimension of the matrix
data = mean + stddev.*randn(n,d);
end