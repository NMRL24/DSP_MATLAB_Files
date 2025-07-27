clc; clear all; close all;

% User Inputs
alphap = input('Enter pass band attenuation: ');
alphas = input('Enter stop band attenuation: ');
fpass = input('Enter pass band frequency: ');
fstop = input('Enter stop band frequency: ');
fs = input('Enter sampling frequency: ');

% Normalization
wp = 2 * fpass / fs;
ws = 2 * fstop / fs;

% Filter Order Calculation
[n, wn] = buttord(wp, ws, alphap, alphas);

% Bandpass Filter Design
[B, A] = butter(n, wn, 'bandpass');
w = 0:0.1:pi;
[h, ph] = freqz(B, A, w);

subplot(2,2,1);
plot(ph/pi, 20*log(abs(h)), 'b-');
xlabel('Normalized Frequency');
ylabel('Gain (dB)');
title('Band Pass Magnitude Response 23485A0419');
grid on;

subplot(2,2,2);
plot(ph/pi, angle(h), 'b-');
xlabel('Normalized Frequency');
ylabel('Phase (radians)');
title('Band Pass Phase Response 23485A0419');
grid on;

% Bandstop Filter Design
[B, A] = butter(n, wn, 'stop');
w = 0:0.1:pi;
[h, ph] = freqz(B, A, w);

subplot(2,2,3);
plot(ph/pi, 20*log(abs(h)), 'b-');
xlabel('Normalized Frequency');
ylabel('Gain (dB)');
title('Band Stop Magnitude Response 23485A0419');
grid on;

subplot(2,2,4);
plot(ph/pi, angle(h), 'b-');
xlabel('Normalized Frequency');
ylabel('Phase (radians)');
title('Band Stop Phase Response 23485A0419');
grid on;
