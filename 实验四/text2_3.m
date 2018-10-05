clear;clc;
A=[ 9,-1,-1;
    -1,8,0;
    -1,0,9];
b=[7,7,8]';
N=length(b);
x=inv(A)*b;   %库函数计算结果
B=zeros(N,N);g=zeros(N,1);
x=zeros(N,1);%迭代初始值
eps=0;%相邻解的距离小于该数时，结束迭代
D=diag(diag(A));
E=-tril(A,-1);%下三角
F=-triu(A,1);%上三角
B=inv(D)*(E+F);g=inv(D)*b;
for k=1:100 %最大迭代次数为100
    y=B*x+g;
    if norm(x-y)<eps
        break;
    end
    x=y;
end
x