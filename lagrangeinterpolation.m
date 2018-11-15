function y = lagrangeinterpolation(x,D)
    %y ��ֵ����ʽ��������ֵ
    %x ��ֵ����ʽ�����Ա���
    %D ���ݵ�m*2�ľ���
    %m ���ݵ�ĸ���,m��
    %�������ղ�ֵ�Ķ���ʽ����
    s = size(D);
    if s(1,2) < 2
        error('error in Data argument D')
    end
    sum = 0;
    for i=1:s(1,1)
        numerator = 1;
        denominator = 1;
        for j=1:s(1,1)
            if j~=i
                numerator = numerator*(x-D(j,1));
                denominator = denominator*(D(i,1)-D(j,1));
            end
        end
        sum=sum + D(i,2)*numerator/denominator;
    end
    y = sum;
end
