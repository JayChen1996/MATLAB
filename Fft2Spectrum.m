function r = Fft2Spectrum(p)
    [~,~,h] = size(p);
    if h ~= 1
        p = rgb2gray(p); % �������ͨ��ͼ����ת��Ϊ�Ҷ�ͼ
    end
    r = fft2(double(p));        % ��ά����Ҷ�任���õ�һ��ʵ������
    r = fftshift(r);    % ��ֱ�������Ƶ��м�
    r = abs(r);         % ����ȡģ
    maxr = max(r(:));   % ��һ����0��255֮���Ա�����ʾ
    minr = min(r(:));   %
    r = (r-minr)/(maxr-minr)*255; %
end