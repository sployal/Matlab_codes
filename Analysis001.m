Vm = 100 thetav =0; % voltage amplitude and phase angle 
z = 1.25; gama = 60; % impendance magnitude and phase angle
thetai = thetav - gama;  %current phase angle in degree
theta = (thetav -thetai)*pi/180;    %degree into radians
im =Vm/z;
wt = 0: .05:2*pi; %wt from 0 to 2*pi
v = Vm*cos(wt); % instantaneous voltage 
i = Im*cos(wt + thetai*pi/180); % instantaneous current
p = v.*i;   % instantaneous power
v=Vm/sqrt(2); im I=im/sqrt(2); %rms voltage and current
p = v*I*sin(theta);  %average power
Q = V*I*sin(theta); %reactive power
S = P + j + Q % complex power
pr = P*(1 + cos(wt + thetav))); %eqn (2.6)
