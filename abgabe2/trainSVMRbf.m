function [ alpha ] = trainSVMRbf( x, target, C )
    
    num = size(x,1);
    
    xn = x.* (target * [ 1 1 ]); 
    H= xn*xn'; 

    X = x;
    y = target;
    num = size(X,1); 

    f	= -ones(1,num); 
    A	= [-eye(num); eye(num)]; 
    b	= [zeros(num,1); C * ones(num,1)]; 
    D =y'; 
    e =0; 
    
    alpha = quadprog(H,f,A,b,D,e);
    
end

