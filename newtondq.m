function C = newtondq(D)
    % 牛顿差商
    % D: 输入的数据点n*2矩阵
    % C: 嵌套形式的插值多项式系数
    % 
    % 嵌套形式的多项式系数，即f[x1],f[x1 x2],...,f[x1 x2 ... xn]
    
    s = size(D);
    if s(1,2)~=2
        error("错误，不是n*2矩阵")
    end
    X = D(:,1);
    Y = D(:,2);
    i=1;
    n = size(X);
    t = X;
    for s=0:n(1,1)-1
        t(i) = f(X,Y,1,s);
        i = i+1;
    end
    C=t;
end

function r = f(X,Y,k,s)
    if s==0
        r = Y(k);
        return;
    end
    r = (f(X,Y,k+1,s-1)-f(X,Y,k,s-1))/(X(k+s)-X(k));
end