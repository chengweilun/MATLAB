function L=cholesky(A)
%(平方根法)正定对称矩阵LU分解的cholesky法
%A为要LU分解的矩阵，L为下三角矩阵
n=length(A);L=zeros(n);
for k=1:n
			    delta=A(k,k);
    for j=1:k-1
        delta=delta-L(k,j)^2;
    end
L(k,k)=sqrt(delta);
    for i=k+1:n
        L(i,k)=A(i,k);
        for j=1:k-1
            L(i,k)=L(i,k)-L(i,j)*L(k,j);
        end
        L(i,k)=L(i,k)/L(k,k);
    end
end

