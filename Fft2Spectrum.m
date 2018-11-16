function r = Fft2Spectrum(p)
    [~,~,h] = size(p);
    if h ~= 1
        p = rgb2gray(p);
    end
    r = fft2(p);
    m = max(r(:));
    r = abs(r);
    r = r/m*255; 
end