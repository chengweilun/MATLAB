function I=squad1(fun,a,b,ep)
if nargin<4 ep=1e-5;end
N=1;h=b-a;
T1=h/2*(feval(fun,a)+feval(fun,b));S0=T1;
while 1
    h=h/2;T2=T1/2;
    for k=1:N
        T2=T2+h*feval(fun,a+(2*k-1)*h);
    end
    I=(4*T2-T1)/3;
    if abs(I-S0)<ep
        break;
    end
    N=2*N;T1=T2;S0=I;
end
