function robot(T,l1,l2)
x=T(1,4);
y=T(2,4);
if (x^2+y^2)>(l1+l2)^2
    warning('²»³ÉÁ¢');
    return
end
c2=(x^2+y^2-l1^2-l2^2)/(2*l1*l2);
s21=sqrt(1-c2^2);
s22=-sqrt(1-c2^2);
q1=atan2d(s21,c2);
q2=atan2d(-s21,c2);
k1=l1+l2*c2;
k21=l2*s21;
k22=l2*s22;
p1=atan2d(y,x)-atan2d(k21,k1);
p2=atan2d(y,x)-atan2d(k22,k1);
r1=atan2d(T(2,1),T(1,1))-q1-p1;
r2=atan2d(T(2,1),T(1,1))-q2-p2;
[p1,q1,r1]
[p2,q2,r2]
