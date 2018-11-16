function theta = LinearRegression(num,times,alpha)
    % Linear Regression
    % num,   samples matrix
    % times, iteration times
    % alpha, learning rate

    [m,n] = size(num);  % m,number of samples
    theta = zeros(1,n); % parameters what we want
    for t=1:times
        zigma = zeros(1,n);
        for i=1:m
            hthetaxi = (theta*num(i,:).' - num(i,n));
            zigma = zigma + hthetaxi*num(i,:);
        end
        theta = theta-alpha*zigma/m;
    end
end