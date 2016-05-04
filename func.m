function [x]=func(a,b,c)
T1=[cosd(a),-sind(a),0;sind(a),cos(a),0;
    0,0,1];
T2=[cosd(b),-sind(b),0.5;sind(b),cos(b),0;
    0,0,1];
T3=[cosd(c),-sind(c),0.5;sind(c),cos(c),0;
    0,0,1];
x=T1*T2*T3
