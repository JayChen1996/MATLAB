function [theta,J] = LinearRegression(num,times,alpha)
    % Linear Regression
    % num,   samples matrix
    % times, iteration times
    % alpha, learning rate
    
    [m,n] = size(num);  % m,number of samples
    features = num(:,1:n-1);
    features = [ones(m,1),features];
    results = num(:,n);
    J = zeros(1,times);
    
    theta = ones(1,n); % 需要进行预测的参数
    for t=1:times
        zigma = zeros(1,n);
        for i=1:m
            hthetaxi = (theta*features(i,:).' - results(i,1));
            zigma = zigma + hthetaxi*features(i,:);
        end
        theta = theta-alpha*zigma/m;
        s = 0;
        for i=1:m
            h = theta*features(i,:)';
            s = s+(h-results(i,1))^2;
        end
        J(1,t) = s/(2*m);
    end
end