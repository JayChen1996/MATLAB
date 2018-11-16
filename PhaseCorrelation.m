function [r,deltay,deltax] = PhaseCorrelation(p1,p2)
    p1 = rgb2gray(p1);
    p2 = rgb2gray(p2);
    
    [m,n] = size(p1);

    fftp1 = fft2(p1);
    fftp2 = fft2(p2);
    
    confftp2 = (fftp2').';
    
    Rup = fftp1.*confftp2;
    Rdown = abs(Rup);
    
    R = Rup./Rdown;
    r = ifft2(R);
    
    [deltax,deltay] = find(r == max(r(:)));
    deltax = m-deltax;
    deltay = n-deltay;
    
end