function [data] = generate_random_data(n,d,mean,stddev)
data = mean + stddev.*randn(n,d);
end