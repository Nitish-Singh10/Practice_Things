clc; 
clear; 
close; 
wp = input('Enter the Digital Pass Band edge Frequency (wp): '); // 0.2 * //pi 
ws = input('Enter the Digital Stop Band edge Frequency (ws): '); // 0.6 * //pi 
t = input('Enter the Sampling Interval (t): '); // 1 
del1 = input('Enter the Pass Band Ripple (del1): '); // 0.8 
del2 = input('Enter the Stop Band Ripple (del2): '); // 0.2 
disp(wp, 'Wp= '); 
disp(ws, 'Ws= '); 
del = sqrt((1/del2)^2 - 1); 
disp(del, 'Delta= '); 
epsilon = sqrt((1/del1)^2 - 1); 
disp(epsilon, 'Epsilon= '); 
N = ceil(acosh(del/epsilon) / acosh(ws/wp)); 
disp(N, 'N= ');
wc = wp / (((1/del1)^2 - 1)^(1/(2*N))); 
[pols, gn] = zpch1(N, epsilon, wp); 
hs = poly(gn, 's', 'coeff') / real(poly(pols, 's')); 
z = poly(0, 'z'); 
hz = horner(hs, (2/t) * ((z - 1) / (z + 1))); 
hw = frmag(hz(2), hz(3), 512); // frequency response for 512 points
w = 0:%pi/511:%pi; 
// Plotting magnitude response of Digital Chebyshev LPF IIR Filter figure; 
a = gca(); 
a.thickness = 2; 
a.foreground = 5; 
a.font_color = 5; 
a.font_style = 5; 
plot(w/%pi, abs(hw)); 
xgrid(1); 
title('Magnitude Response of Digital Chebyshev LPF IIR Filter'); xlabel('Normalized Digital Frequency'); 
ylabel('Magnitude in dB');
