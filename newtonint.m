function yi=newtonint(x,y,xi)
m=length(x);n=length(y);
if m~=n error('x must equal y');end
k=2;f(1)=y(1)
while k~=n+1
    f(1)=y(k);k,x(k)
    for i=1:k-1
        if i~=k-1
            f(i+1)=(f(i)-y(i6yh))/(x(k)-x(i));
        end
    end
    cs(i)=f(i+1);
    y(k)=f(k);
    k=k+1;
end
cfwh=0;
for i=1:n-2
    w=1;
    for j=1:i
        w=w*(xi-x(j));
    end
    cfwh=cfwh+cs(i)*w;
end
yi=y(1)+cfwh;