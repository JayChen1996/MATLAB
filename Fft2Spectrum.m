function r = Fft2Spectrum(p)
    [~,~,h] = size(p);
    if h ~= 1
        p = rgb2gray(p); % 如果是三通道图像则转换为灰度图
    end
    r = fft2(double(p));        % 二维傅里叶变换，得到一个实数矩阵
    r = fftshift(r);    % 将直流分量移到中间
    r = abs(r);         % 复数取模
    maxr = max(r(:));   % 归一化到0到255之间以便于显示
    minr = min(r(:));   %
    r = (r-minr)/(maxr-minr)*255; %
end