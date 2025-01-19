A = [1 2;3 1];B = [0;1];
C = [1 2]; D = [0];
SYS1 = ss(A,B,C,D);
CONT_SYS1= ctrb(SYS1);
p=rank(CONT_SYS1)
% % EXAMPLE
% Consider a plant
A2 = [1  3;3  1];  B2 = [1  0]'; 
C2 = [1  0];                           %% Uncontrolled system

SYS2=ss(A2,B2,C2,0);

[Y,T]=step(SYS2);                      %% Step response of the system
figure(1)
plot(T,Y)
P = pole (SYS2);
p2=[-5+2*j  -5-2*j];
K=place(A2,B2,p2);
Ak = A2-B2*K;

SYSk=ss(Ak, B2, C2, 0)
Pk=pole(SYSk);
[Y,T]=step(SYSk);
figure(2)
plot(T,Y)