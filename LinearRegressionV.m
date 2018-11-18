function [theta,J] = LinearRegressionV(num,times,alpha)
    % Linear Regression
    % num,   samples matrix
    % times, iteration times
    % alpha, learning rate
    
    [m,n] = size(num);  % m,number of samples
    features = num(:,1:n-1);
    features = [ones(m,1),features];
    results = num(:,n);
    J = zeros(1,times);
    
    theta = ones(1,n); % ??????????????????
    
    for t=1:times
        J = (1/2*m) * (features * theta' - results).^2;
        temp = (features * theta' - results) .* features;
        gamma = (1/m) * sum(temp,1);
        theta = theta - alpha * gamma;
    end
end