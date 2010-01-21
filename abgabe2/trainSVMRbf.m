function [ alpha ] = trainSVMRbf( x, target )
    
    num = size(x,1);
    
%     xn = x.* (target * [ 1 1 ]); 
%     k= xn*xn'; 
%     gamma =1;
%     f= -ones(num,1); 
%     Aeq = target'; 
%     beq = 0;
%     A =zeros(1,num);
%     b = 0;
%     lb = [zeros(num,1)]; 
%     ub = [gamma*ones(num,1)]; 
%     [alpha,fvala] = quadprog(k,f,A,b,Aeq,beq,lb,ub);

X = x;
C = 10;
y = target;
num = size(X,2); 

H	= (X' * X) .* (y' * y); %+ epsilon*eye(num); 
H
f	= -ones(1,num); 
A	= [-eye(num); eye(num)]; 
b	= [zeros(num,1); 
    C * ones(num,1)]; 
D =y'; 
e =0; 

alpha = quadprog(H,f,A,b,D,e);

% alpha

end

