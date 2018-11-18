num = xlsread('/Users/gongxingheng/Desktop/MATLAB/Folds5x2_pp.xlsx');
at = num(:,1);
pe = num(:,5);
[theta,J]=LinearRegressionV([at,pe],50000,0.001);
x = 1:0.5:40;
y = theta(1,1)+theta(1,2)*x;
plot(x,y);
hold on
scatter(at,pe);