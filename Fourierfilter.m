function p = Fourierfilter(p,threshold)
    %threshold, belongs to (0,1);
    %
    [m,n,h] = size(p);
    if h ~= 1
        p = rgb2gray(p); % 如果是三通道图像则转换为灰度图
    end
    r = fft2(double(p));        % 二维傅里叶变换，得到一个实数矩阵
    s = abs(r);
    maxs = max(s(:));
    mins = min(s(:));
    %s = (s-mins)/(maxs-mins);
    threshold = threshold*(maxs-mins)+mins;
    for i=1:m
        for j=1:n
            if abs(r(i,j))<threshold
                r(i,j) = 0+0i;
            end
        end
    end
    p = ifft2(r);
    maxp = max(p(:));
    minp = min(p(:));
    for i=1:m
        for j=1:n
            p(i,j) = (p(i,j)-minp)/(maxp-minp)*255;
        end
    end
    p = uint8(p);
end