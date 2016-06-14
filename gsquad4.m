function I=gsquad4(fun,a,b,N)
h=(b-1)/N;I=0;
for k=1:N
    t=[-1 -1/sqrt(5) 1/sqrt(5) 1];A=[1/6 5/6 5/6 1/6];
    F=feval(fun,h/2*t+a+(k-1/2)*h);
    I=I+sum(A.*F);
end
I=h/2*I;