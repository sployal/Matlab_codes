% Numerator
num = [1];
% Denominator
den = [1 1 0];
% Transfer Function
G = tf(num, den)
% Plot Frequency Response
bode(G)
