clear;clc;
A=[ 9,-1,-1;
    -1,8,0;
    -1,0,9];
b=[7,7,8]';
N=length(b);
x=inv(A)*b;   %�⺯��������
B=zeros(N,N);g=zeros(N,1);
x=zeros(N,1);%������ʼֵ
eps=0;%���ڽ�ľ���С�ڸ���ʱ����������
D=diag(diag(A));
E=-tril(A,-1);%������
F=-triu(A,1);%������
B=inv(D)*(E+F);g=inv(D)*b;
for k=1:100 %����������Ϊ100
    y=B*x+g;
    if norm(x-y)<eps
        break;
    end
    x=y;
end
x