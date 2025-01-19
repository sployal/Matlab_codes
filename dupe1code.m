
Top=[1 3]; % The transfer function's numerator
Bottom=[1 6 11 6]; % the transfer function's denoninator
Ltf = tf(Top,Bottom)
[A,B,C,D]=tf2ss(Top,Bottom)% Convert transfer function  to state-space form

Ct=ctrb(A,B)%detremination of  the controllability matrix

rank(Ct) % determining the controlability matrix's rank

Obm=obsv(A,C) %  calculating the observability matrix
rank(Obm) %  rank of observerbility Matrix
clear


Top=[1]; % The transfer function's numerator
Bottom=[1 5 6]; %the transfer function's denoninator
Ltf = tf(Top,Bottom)
[A,B,C,D]=tf2ss(Top,Bottom) % conversion of Tf (ii) to state space matix
Ct=ctrb(A,B) % controllability matrix
rank(Ct)% determining the controlability matrix's rank

OB=obsv(A,C) % Obsrverbility Matrix
rank(OB)% rank of OB