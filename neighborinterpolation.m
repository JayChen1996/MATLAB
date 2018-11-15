function [after] = neighborinterpolation(before,after)
    %before 需要进行放大的原灰度图像
    %after  进行最近邻内插后的灰度图像
    
    %对图像进行最近邻内插
    
    [m,n] = size(before);
    [i,j] = size(after);
    
    for row = 1:i
        for col = 1:j
            after(row,col) = before(round(double(row)*m/i),round(double(col)*n/j));
        end
    end
end