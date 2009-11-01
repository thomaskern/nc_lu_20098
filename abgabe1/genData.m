function [ data, target ] = genData( n,d )
% generates n data with n targets. n/2 will be from class A, n/2 will be
% from class B
data = [generate_random_data(n/2,d,0,2)
    generate_random_data(n/2,d,10,1)];

target = [repmat(1,1,50)  repmat(-1,1,50)];

end
