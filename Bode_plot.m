% Numerator
num = [2];
% Denominator
den = [1 1];
% Transfer Function
G = tf(num, den)
% Plot Frequency Response
bode(G)
