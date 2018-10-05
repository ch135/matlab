function[x,detA]=text2_2(A,b)
n=length(b);
detA=det(A);
d=0;x=zeros(n,1);
c=zeros(1,n);

if abs(det(A))<=eps
    error('ϵ�������������');
    return;
end
for i=1:n-1
    max=abs(A(i,i));
    m=i;
    for j=i+1:n
        if max<abs(A(j,i))
            max=abs(A(j,i));
            m=j;
        end
    end
    if m~=i
        for k=i:n
            c(k)=A(i,k);
            A(i,k)=A(m,k);
            A(m,k)=c(k);
        end
        d=b(i);b(i)=b(m);b(m)=d;
    end
    for k=i+1:n
        for j=i+1:n
            A(k,j)=A(k,j)-A(i,j)*A(k,i)/A(i,i);
        end
        b(k)=b(k)-b(i)*A(k,i)/A(i,i);
        A(k,i)=0;
    end
end

x(n)=b(n)/A(n,n);
for i=n-1:(-1):1
    sum=0;
    for j=i+1:n
        sum=sum+A(i,j)*x(j);
    end
    x(i)=(b(i)-sum)/A(i,i);
end
end