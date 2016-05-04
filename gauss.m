
function [x]=gauss(A,b)
% ��Gauss_Seidel����������Է�����,����A�Ƿ���
    x0=zeros(1,length(b)); % ����ֵ
    tol=10^(-2); % ��������
    N=1000;  % ��������������
    [n,n]=size(A); % ȷ������A�Ľ�
    k=1;
    % ��������
    while k<=N
        x(1)=(b(1)-A(1,2:n)*x0(2:n)')/A(1,1);
        for i=2:n
            x(i)=(b(i)-A(i,1:i-1)*x(1:i-1)'-A(i,i+1:n)*x0(i+1:n)')...
/A(i,i);
        end
        if max(abs(x-x0))<=tol
            fid = fopen('G_S_iter_result.txt', 'wt');
            fprintf(fid,'\n********��Gauss_Seidel����������Է������������********\n\n');
            fprintf(fid,'��������: %d��\n\n',k);
            fprintf(fid,'x��ֵ\n\n');
            fprintf(fid, '%12.8f \n', x);
            break;
        end
        k=k+1;
        x0=x;
    end
    if k==N+1
      fid = fopen('G_S_iter_result.txt', 'wt');
      fprintf(fid,'\n********��Gauss_Seidel����������Է������������********\n\n');
      fprintf(fid,'��������: %d��\n\n',k);
      fprintf(fid,'�������������������ʧ�ܣ�');
      fclose(fid);
    end

