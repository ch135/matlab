function erfenfa
    st=3;
    en=4;
    get=(3+4)/2;
    num=0;
    result=get.^2-2*get-5;
    %动态添加数组元素
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
    %输出求值过程
    x
    y
    
    subplot(121);plot(x,y,'r-*');title('二分法求值图');
    I=imread('picture/1.jpg');
    J=imadjust(I,[0.4 0.6],[]);
    subplot(122);imshow(J); title('对比度增强照片--陈浩');axis image;
end