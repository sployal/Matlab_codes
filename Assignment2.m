disp('Transfer Function2')
num=[6];
den=[1 3 2];
[A,B,C,D]=tf2ss(num,den)
CM=ctrb(A,B)
rank(CM)
OB=obsv(A,C)
rank(OB)
