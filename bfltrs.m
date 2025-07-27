clc; clear; close all;

figure;

% Low-Pass Filter
alphap = input('Enter the pass band attenuation (dB): ');
alphas = input('Enter the stop band attenuation (dB): ');
fp = input('Enter pass band frequency (Hz): ');
fstop = input('Enter stop band frequency (Hz): ');
fs = input('Enter sampling frequency (Hz): ');

wp = fp / (fs / 2); 
ws = fstop / (fs / 2); 

[n, wn] = buttord(wp, ws, alphap, alphas);
[B, A] = butter(n, wn, 'low');
[h, w] = freqz(B, A, 1024);

subplot(2,2,1);
plot(w/pi, 20*log10(abs(h)), 'b-');
title('Magnitude Response of Low-Pass Filter - 23485A0419');
xlabel('Normalized Frequency');
ylabel('Gain (dB)');
grid on;

subplot(2,2,2);
plot(w/pi, angle(h), 'b-');
title('Phase Response of Low-Pass Filter - 23485A0419');
xlabel('Normalized Frequency');
ylabel('Phase (radians)');
grid on;

% High-Pass Filter
alphap = input('Enter the pass band attenuation (dB): ');
alphas = input('Enter the stop band attenuation (dB): ');
fp = input('Enter pass band frequency (Hz): ');
fstop = input('Enter stop band frequency (Hz): ');
fs = input('Enter sampling frequency (Hz): ');

wp = fp / (fs / 2); 
ws = fstop / (fs / 2); 

[n, wn] = buttord(wp, ws, alphap, alphas);
[B, A] = butter(n, wn, 'high');
[h, w] = freqz(B, A, 1024);

subplot(2,2,3);
plot(w/pi, 20*log10(abs(h)), 'b-');
title('Magnitude Response of High-Pass Filter - 23485A0419');
xlabel('Normalized Frequency');
ylabel('Gain (dB)');
grid on;

subplot(2,2,4);
plot(w/pi, angle(h), 'b-');
title('Phase Response of High-Pass Filter - 23485A0419');
xlabel('Normalized Frequency');
ylabel('Phase (radians)');
grid on;
