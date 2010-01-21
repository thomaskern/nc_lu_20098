function [ x, target] = genDataRbf( num, d )

    [x,target] = genData(num,d);
    
    target(11) = target(1)*-1;
    target(12) = target(7)*-1;
    
    x(11,1) = 3;
    x(11,2) = (x(6,1) - x(5,1))/2+x(5,1);
    
    x(12,1) = 7;
    x(12,2) = (x(6,1) - x(5,1))/2+x(6,1);
end

