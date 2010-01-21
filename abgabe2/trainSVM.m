function [ alpha ] = trainSVM( x, target )
    
    num = size(x,1);
    
    xn = x.* (target * [ 1 1 ]); 
    k= xn*xn'; 
    gamma =1;
    f= -ones(num,1); 
    Aeq = target'; 
    beq = 0;
    A =zeros(1,num);
    b = 0;
    lb = [zeros(num,1)]; 
    ub = [gamma*ones(num,1)]; 
    [alpha,fvala] = quadprog(k,f,A,b,Aeq,beq,lb,ub);
    
end