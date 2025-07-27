clc; clear all; close all;

% User Inputs
alphap = input('Enter pass band attenuation (dB): ');
alphas = input('Enter stop band attenuation (dB): ');
fpass = input('Enter pass band frequency (Hz): ');
fstop = input('Enter stop band frequency (Hz): ');
fs = input('Enter sampling frequency (Hz): ');

% Normalization
wp = 2 * fpass / fs;
ws = 2 * fstop / fs;

% Filter Order Calculation
[n, wn] = cheb1ord(wp, ws, alphap, alphas);

% Low Pass Filter Design
[B, A] = cheby1(n, alphap, wn);
w = linspace(0, pi, 512);
[h, ~] = freqz(B, A, w);

subplot(2, 2, 1);
plot(w/pi, 20*log10(abs(h)), 'b-');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Gain (dB)');
title('Chebyshev Low Pass Magnitude Response 23485A0419');
grid on;

subplot(2, 2, 2);
plot(w/pi, angle(h), 'b-');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Phase (radians)');
title('Chebyshev Low Pass Phase Response 23485A0419');
grid on;

% High Pass Filter Design
[B, A] = cheby1(n, alphap, wn, 'high');
[h, ~] = freqz(B, A, w);

subplot(2, 2, 3);
plot(w/pi, 20*log10(abs(h)), 'b-');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Gain (dB)');
title('Chebyshev High Pass Magnitude Response 23485A0419');
grid on;

subplot(2, 2, 4);
plot(w/pi, angle(h), 'b-');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Phase (radians)');
title('Chebyshev High Pass Phase Response 23485A0419');
grid on;
