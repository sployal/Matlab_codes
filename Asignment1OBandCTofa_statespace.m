%TRANSFER FUNCTION 1
disp('Transfer Function (i)')
Num=[1 3]; % numerator of the transfer function
Denom=[1 6 11 6]; % denoninator of the transfer function
DAV = tf(Num,Denom)
[A,B,C,D]=tf2ss(Num,Denom)% Convert transfer function filter parameters to state-space form

CTM=ctrb(A,B)%detremination of  the controllability matrix

rank(CTM) % determination of rank of the controlability matrix
OBM=obsv(A,C) % compute the observability matrix of a state-space model
rank(OBM) % determination of rank of observerbility Matrix
clear
 
%TRANSFER FUNCTION 2
disp('Transfer Function (ii)') % display
Num=[1]; % the numerator of tf 
Denom=[1 5 6];% the denominator of tf
MUG = tf(Num, Denom) %represents continuous-time  transfer functions in polynomial form
[A,B,C,D]=tf2ss(Num,Denom) % conversion of Tf (ii) to state space matix
CTM=ctrb(A,B) % controllability matrix
rank(CTM)   % provides estimate of no of linierly independent rows/coluns

OBM=obsv(A,C) % Obsrverbility Matrix
rank(OBM)  % gives no of linierly independent rows/coluns of the matrix 
