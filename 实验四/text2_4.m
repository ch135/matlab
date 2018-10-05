function [x,n]=text2_4(A,b,x0,esp,M)
if (nargin==3)
    esp=1.0e-6;
    M=200;
elseif (nargin==4)
    M=200;
elseif (nargin<3)
    error;
    return;
end
D=diag(diag(A));
L=-tril(A,-1);
U=-triu(A,1);
G=(D-L)\U;
f=(D-L)\b;
x=G*x0+f;
n=1;
while (norm(x-x0)>=esp)
    x0=x;
    x=G*x0+f;
    n=n+1;
    if(n>=M)
        disp('迭代次数过多可能不收敛！');
        return;
    end
end
    
