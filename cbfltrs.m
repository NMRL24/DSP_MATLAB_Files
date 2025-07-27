clc; clear all; close all;

alphap = input('Enter pass band attenuation: ');
alphas = input('Enter stop band attenuation: ');
fpass = input('Enter pass band frequency: ');
fstop = input('Enter stop band frequency: ');
fs = input('Enter sampling frequency: ');

wp = 2 * fpass / fs;
ws = 2 * fstop / fs;

[n, wn] = cheb1ord(wp, ws, alphap, alphas);

% Bandpass Filter Design
[B, A] = cheby1(n, 1, wn, 'bandpass');
w = 0:0.1:pi;
[h, ph] = freqz(B, A, w);

subplot(2, 2, 1);
plot(ph/pi, 20*log(abs(h)), 'b-');
xlabel('Normalized Frequency');
ylabel('Gain (dB)');
title('Chebyshev Band Pass Magnitude Response 23485A0419');
grid on;

subplot(2, 2, 2);
plot(ph/pi, angle(h), 'b-');
xlabel('Normalized Frequency');
ylabel('Phase (radians)');
title('Chebyshev Band Pass Phase Response 23485A0419');
grid on;

% Bandstop Filter Design
[B, A] = cheby1(n, 1, wn, 'stop');
w = 0:0.1:pi;
[h, ph] = freqz(B, A, w);

subplot(2, 2, 3);
plot(ph/pi, 20*log(abs(h)), 'b-');
xlabel('Normalized Frequency');
ylabel('Gain (dB)');
title('Chebyshev Band Stop Magnitude Response 23485A0419');
grid on;

subplot(2, 2, 4);
plot(ph/pi, angle(h), 'b-');
xlabel('Normalized Frequency');
ylabel('Phase (radians)');
title('Chebyshev Band Stop Phase Response 23485A0419');
grid on;
