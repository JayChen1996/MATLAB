function t = Ordfilt2Times(X,order,domain,times)
    % ���ж�λͳ���˲�times��
    for i=1:times
        t = ordfilt2(X,order,domain);
    end
end