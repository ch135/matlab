function []=picture(c,n);
p=imread(c);
axes('position',n);
imshow(p);
end


% function picture()
%     text1;
%     text2;
%     text3;
%     text4;
% end
%     %�Աȶ�
%     function text1
%     I=imread('picture/1.jpg');
%     J=imadjust(I,[0.2 0.8],[]); 
%     subplot(421);imshow(I); title('ԭʼͼ��--�º�');axis image;
%     subplot(422);imshow(J); title('�Աȶ���ǿ��Ƭ--�º�');axis image;
% end
%     %��ɫ
%     function text2
%         X1=imread('picture/2.jpg'); 
%         f1=200;
%         g1=256; 
%         k=g1/f1;  
%         [m,n]=size(X1); 
%         X2=double(X1); 
%         for i=1:m    
%             for j=1:n       
%                 f=X2(i,j);      
%                 g(i,j)=0;       
%                 if(f>=0)&(f<=f1)       
%                     g(i,j)=g1-k*f;      
%                 else
%                     g(i,j)=0;      
%                 end
%             end
%         end
%         subplot(423);imshow(X1);title('ԭʼͼ��--����');  
%         subplot(424);imshow(mat2gray(g));title('��ɫ���ͼ��--����');
%     end
%     %ͼ����С
%     function text3
%     A1=imread('picture/3.jpg'); 
%     subplot(425);imshow(A1); title('ԭʼͼ��--��־ΰ');
%     A2=imresize(A1,0.5);
%     subplot(426);imshow(A2); title('ԭʼͼ����С��--��־ΰ');
%     end
%     %ͼ��Ŵ�
%     function text4
%     B1=imread('picture/4.jpg'); 
%     subplot(427);imshow(B1); title('ԭʼͼ��--���ٵ�');
%     B2=imresize(B1,30,'bicubic');
%     subplot(428);imshow(B2); title('˫������ֵ����--���ٵ�');
%     end