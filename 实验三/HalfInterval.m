%%%%%%% HalfInterval.m
function root =HalfInterval(f,a,b,eps)
global n;
n=0;
if (nargin==3)
    esp=1.0e-4;
end
f1=subs(sym(f),findsym(sym(f)),a);%函数在端点的值
f2=subs(sym(f),findsym(sym(f)),b);
if(f1==0)
    root=a;
end
if(f2==0)
    root=b;
end
if(f1*f2>0)
    disp('该方程没有根');
    return;
else
    root=FindRoots(f,a,b,eps);
    fprintf('求根次数为 %d次',n);
end
function r=FindRoots(f,a,b,eps)
global n;
f_1=subs(sym(f),findsym(sym(f)),a);
f_2=subs(sym(f),findsym(sym(f)),b);
mf=subs(sym(f),findsym(sym(f)),(a+b)/2);%函数在两端点中点的值
if(abs(b-a)<=eps)
    r=(b+3*a)/4;
else
    if(f_1*mf==0)   %中点函数值=0，所以中点为根
        r=(a+b)/2;
    else
        if(f_1*mf>0)
            t=(a+b)/2;
            n=n+1;
            r=FindRoots(f,t,b,eps);
        else
            s=(a+b)/2;
            n=n+1;%求根次数+1
            r=FindRoots(f,a,s,eps);
        end
    end
end
