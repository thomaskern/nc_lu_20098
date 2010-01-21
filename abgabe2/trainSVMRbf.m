function [ alpha ] = trainSVMRbf( x, target, C )
    

X = x;
C = 10;
y = target;
num = size(X,1); 

xn = x.* (target * [ 1 1 ]); 
H= xn*xn'; 
f = -ones(1,num); 
A = [-eye(num); eye(num)]; 
b = [zeros(num,1); C * ones(num,1)]; 
D =y'; 
e =0; 

alpha = quadprog(H,f,A,b,D,e);

alpha

    
end

