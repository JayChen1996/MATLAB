function p = Fourierfilter(p,threshold)
    %threshold, belongs to (0,1);
    %
    [m,n,h] = size(p);
    if h ~= 1
        p = rgb2gray(p); % �������ͨ��ͼ����ת��Ϊ�Ҷ�ͼ
    end
    r = fft2(double(p));        % ��ά����Ҷ�任���õ�һ��ʵ������
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