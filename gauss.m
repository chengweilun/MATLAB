
function [x]=gauss(A,b)
% 用Gauss_Seidel迭代求解线性方程组,矩阵A是方阵
    x0=zeros(1,length(b)); % 赋初值
    tol=10^(-2); % 给定误差界
    N=1000;  % 给定最大迭代次数
    [n,n]=size(A); % 确定矩阵A的阶
    k=1;
    % 迭代过程
    while k<=N
        x(1)=(b(1)-A(1,2:n)*x0(2:n)')/A(1,1);
        for i=2:n
            x(i)=(b(i)-A(i,1:i-1)*x(1:i-1)'-A(i,i+1:n)*x0(i+1:n)')...
/A(i,i);
        end
        if max(abs(x-x0))<=tol
            fid = fopen('G_S_iter_result.txt', 'wt');
            fprintf(fid,'\n********用Gauss_Seidel迭代求解线性方程组的输出结果********\n\n');
            fprintf(fid,'迭代次数: %d次\n\n',k);
            fprintf(fid,'x的值\n\n');
            fprintf(fid, '%12.8f \n', x);
            break;
        end
        k=k+1;
        x0=x;
    end
    if k==N+1
      fid = fopen('G_S_iter_result.txt', 'wt');
      fprintf(fid,'\n********用Gauss_Seidel迭代求解线性方程组的输出结果********\n\n');
      fprintf(fid,'迭代次数: %d次\n\n',k);
      fprintf(fid,'超过最大迭代次数，求解失败！');
      fclose(fid);
    end

