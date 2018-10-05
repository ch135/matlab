function text2_5(x)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    % a:获取矩阵的昂行列 
    % b:矩阵的行
    % c:矩阵的列
    a=size(x);
    b=a(1,1);
    c=a(1,2);
    for i=1:b
        %输出每一行的平均值
        disp(sum(x(i,:))/c);
    end
end

