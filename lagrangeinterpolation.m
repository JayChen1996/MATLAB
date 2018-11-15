function y = lagrangeinterpolation(x,D)
    %y 插值多项式函数返回值
    %x 插值多项式函数自变量
    %D 数据点m*2的矩阵
    %m 数据点的个数,m个
    %拉格朗日插值的多项式函数
    s = size(D);
    if s(1,2) < 2
        error('error in Data argument D')
    end
    sum = 0;
    for i=1:s(1,1)
        numerator = 1;
        denominator = 1;
        for j=1:s(1,1)
            if j~=i
                numerator = numerator*(x-D(j,1));
                denominator = denominator*(D(i,1)-D(j,1));
            end
        end
        sum=sum + D(i,2)*numerator/denominator;
    end
    y = sum;
end
