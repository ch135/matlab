function erfenfa
    st=3;
    en=4;
    get=(3+4)/2;
    num=0;
    result=get.^2-2*get-5;
    %��̬�������Ԫ��
    x(num+1)=get;
    y(num+1)=result;
    while abs(result)>0.5*10^-3
    if(result>0)
        en=get;
    else if(result<0)
            st=get;
        end
    end
    get=(st+en)/2;
    result=get.^2-2*get-5;
    num=num+1;
    x(num+1)=get;
    y(num+1)=result;
    end
    plot(x,y,'r-x')
    %�����ֵ����
    x
    y
    
    subplot(121);plot(x,y,'r-*');title('���ַ���ֵͼ');
    I=imread('picture/1.jpg');
    J=imadjust(I,[0.4 0.6],[]);
    subplot(122);imshow(J); title('�Աȶ���ǿ��Ƭ--�º�');axis image;
end