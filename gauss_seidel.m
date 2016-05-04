function gauss_seidel(A,b,x,eps)
D=diag(diag(A));
L=tril(A,-1);
U=triu(A,1);
e=inf; 
X=x; 
s=0; 
while e>=eps      
    x=inv(D+L)*U*x+inv(D+L)*b;
    e=norm(x-X,inf);     
    X=x;     
    s=s+1;
end
if s<300
    x
    s
else
    disp('超过最大迭代次数')     
    disp('迭代到100次的结果为')     
    x 
end