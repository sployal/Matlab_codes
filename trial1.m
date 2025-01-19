
%state feed back control Group(5 people)

 A=[1 1;1 2]; % input the A matrix
 B=[1;0]; % input the b matrix
 C=[0 1]; % input the c matrix
 D=[0];
 DAVE= ss(A,B,C,D); %
 [NUM,DEN]= ss2tf(A,B,C,D)%  convertion of state space to the transfer fundtion 
 NUM  % display numerator of transfer function
 DEN   % display denominator of transfer cunction
 DAVE=tf(NUM,DEN)  % display the actual transfer function
 impulseplot(DAVE) % show an impulse plot of the systems transfer function
 