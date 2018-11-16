function t = Ordfilt2Times(X,order,domain,times)
    % 进行二位统计滤波times次
    for i=1:times
        t = ordfilt2(X,order,domain);
    end
end