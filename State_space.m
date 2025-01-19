A=[0 1 0; 0 0 1; -3 -4 -2];
B=[0; 0; 1];
C=[5 1 0];
D=[0];
KEV= ss(A,B,C,D);
[NUM,DEN]= ss2tf(A,B,C,D);
NUM
DEN
mysys_tf=tf(NUM,DEN)
 