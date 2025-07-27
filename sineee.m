% Combined Sine Wave Analysis in Single Window - 23485A0424
clear all;
close all;
clc;

% Parameters
fs = 1000;       % Sampling frequency (Hz)
T = 1;           % Duration (seconds)
t = 0:1/fs:T-1/fs; % Time vector
N = length(t);   % Number of samples

% Frequencies
f_low = 5;      % Low frequency (Hz)
f_high = 25;    % High frequency (Hz)

% Generate sine waves
sine_low = input('enter amplitude of low frequency signe wave: ').*sin(2*pi*f_low*t);
sine_high = input('enter amplitude of high frequency signe wave: ').*sin(2*pi*f_high*t);
sine_combined = sine_low + sine_high;

% Compute DFT using FFT
dft_low = fft(sine_low);
dft_high = fft(sine_high);
dft_combined = fft(sine_combined);

% Compute Power Spectral Density (PSD)
psd_low = (abs(dft_low).^2)/N;
psd_high = (abs(dft_high).^2)/N;
psd_combined = (abs(dft_combined).^2)/N;

% Frequency axis
freq = (0:N-1);

% Time Domain Plots
subplot(3,2,1);
plot(t, sine_low);
title('Time Domain: Low Freq (5 Hz) - 23485A0424');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,2,3);
plot(t, sine_high);
title('Time Domain: High Freq (50 Hz) - 23485A0424');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,2,5);
plot(t, sine_combined);
title('Time Domain: Combined Signal - 23485A0424');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Frequency Domain Plots
subplot(3,2,2);
stem(freq, psd_low, 'filled');
title('PSD: Low Frequency - 23485A0424');
xlabel('Frequency (Hz)');
ylabel('Power');
grid on;

subplot(3,2,4);
stem(freq, psd_high, 'filled');
title('PSD: High Frequency - 23485A0424');
xlabel('Frequency (Hz)');
ylabel('Power');
grid on;

subplot(3,2,6);
stem(freq, psd_combined, 'filled');
title('PSD: Combined Signal - 23485A0424');
xlabel('Frequency (Hz)');
ylabel('Power');
grid on;

% Add overall title
sgtitle('Sine Wave Analysis - 23485A0424');