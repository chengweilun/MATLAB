function [x,k]=jacobif(A,b,x0,ep,Nmax)
n=length(A);k=0;
if nargin<5 Nmax=500;end
if nargin<4 ep=1e-5;end
if nargin<3 x0=zeros(n,1);y=zeros(n,1);end
x=x0;x0=x+2*ep;
while norm(x0-x,inf)>ep&k<Nmax,k=k+1;x0=x;
    for i=1:n
        y(i)=b(i);
         for j=1:n
             if j ~= i
                 y(i)=y(i)-A(i,j)*x0(j);
             end
         end
         if abs(A(i,i))<1e-10|k==Nmax
             warning('A(i,i) ̫С');
             return
         end
         y(i)=y(i)/A(i,i);
    end;
    x=y;
end
