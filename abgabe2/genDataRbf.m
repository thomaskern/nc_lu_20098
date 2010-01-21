function [ x, target] = genDataRbf( num, d )
 
    [x,target] = genData(num,d);
    
    target(num-5) = target(num-5)*-1;
    target(num-1) = target(1)*-1;
    target(num) = target(num)*-1;
    
%     x(num-1,1) = 3;
%     x(num-1,2) = (x(num/2+1,1) - x(num/2,1))/2+x(num/2,1);
    
%     x(num,1) = 7;
%     x(num,2) = (x(num/2+1,1) - x(num/2,1))/2+x(num/2+1,1);
    
end