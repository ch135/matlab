clc;
for i=1:4
    num=num2str(i);
    SC=imread([num,'.jpg']);
    SCS=imcomplement(SC);
    subplot(['42',num2str(i*2-1)]);imshow(SC); title('ԭʼͼ');axis image;
    subplot(['42',num2str(i*2)]);imshow(SCS); title('�޸�ͼ');axis image;
end
