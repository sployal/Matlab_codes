
% angle from 0 to 2pi
theta = 0 : 0.01 : 2 * pi;

% sin function works on an array
f = sin(theta);

t = 0 : pi / 50 : 10 * pi;

% open a new figure
figure

% Riemann surfaces figure
cplxroot(5) % plots the Riemann Surface for w = z ^ (1 / 5)
