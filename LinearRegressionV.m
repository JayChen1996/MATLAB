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
        tep = (features * theta' - results).^2;
        J(1,t) = (1/2*m) * sum(tep,1);
        temp = (features * theta' - results) .* features;
        gamma = (1/m) * sum(temp,1);
        theta = theta - alpha * gamma;
    end
end