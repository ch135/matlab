function text2_6(x)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
    while x~=1
        %ȡ����
        if(rem(x,2)==0)
            x=x./2;
        else x=x*3+1;
        end
        %���x
        disp(x);
    end
end

