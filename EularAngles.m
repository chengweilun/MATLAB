function T=f(a,b,c,p)
Rz=[cosd(a),-sind(a),0;sind(a),cosd(a),0;0,0,1];
Ry=[cosd(b),0,sind(b);0,1,0;-sind(b),0,cosd(b)];
Rx=[1,0,0;0,cosd(c),-sind(c);0,sind(c),cosd(c)];
R=Rz*Ry*Rx;
T=[R,p;0,0,0,1]