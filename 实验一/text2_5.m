function text2_5(x)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    % a:��ȡ����İ����� 
    % b:�������
    % c:�������
    a=size(x);
    b=a(1,1);
    c=a(1,2);
    for i=1:b
        %���ÿһ�е�ƽ��ֵ
        disp(sum(x(i,:))/c);
    end
end

