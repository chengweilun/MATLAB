%logotu.m
load logo
surf(L,R),colormap(M)
n=size(L,1)
axis off
axis([1 n 1 n -.2 .8])
view(-37.5,30)
title('Life is too short to spend writing DO loops.....')