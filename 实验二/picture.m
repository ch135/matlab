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
%     %对比度
%     function text1
%     I=imread('picture/1.jpg');
%     J=imadjust(I,[0.2 0.8],[]); 
%     subplot(421);imshow(I); title('原始图像--陈浩');axis image;
%     subplot(422);imshow(J); title('对比度增强照片--陈浩');axis image;
% end
%     %反色
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
%         subplot(423);imshow(X1);title('原始图像--徐振华');  
%         subplot(424);imshow(mat2gray(g));title('反色后的图像--徐振华');
%     end
%     %图像缩小
%     function text3
%     A1=imread('picture/3.jpg'); 
%     subplot(425);imshow(A1); title('原始图像--文志伟');
%     A2=imresize(A1,0.5);
%     subplot(426);imshow(A2); title('原始图像缩小版--文志伟');
%     end
%     %图像放大
%     function text4
%     B1=imread('picture/4.jpg'); 
%     subplot(427);imshow(B1); title('原始图像--陈荣弟');
%     B2=imresize(B1,30,'bicubic');
%     subplot(428);imshow(B2); title('双立法插值法版--陈荣弟');
%     end