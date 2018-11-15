function [after] = neighborinterpolation(before,after)
    %before ��Ҫ���зŴ��ԭ�Ҷ�ͼ��
    %after  ����������ڲ��ĻҶ�ͼ��
    
    %��ͼ�����������ڲ�
    
    [m,n] = size(before);
    [i,j] = size(after);
    
    for row = 1:i
        for col = 1:j
            after(row,col) = before(round(double(row)*m/i),round(double(col)*n/j));
        end
    end
end