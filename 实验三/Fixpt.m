function[k,p,err,P]=Fixpt(g,p0,tol,maxl)
P(1)=p0;
for k=2:maxl
    P(k)=feval('g',P(k-1));
    k,err=abs(P(k)-P(k-1));
    p=P(k);
    if(err<tol)
        break;
    end;
    if(k==maxl)
        disp('超过最大迭代次数!');
    end
end
P
function y=g(x)
y=log10(x+2)  %x-10^x+2=0可以转化为log10(x+2)
