clc; clear all; close all; 
wc1 = input('Enter the lower cut-off frequency: ');
wc2 = input('Enter the upper cut-off frequency: '); 
N = input('Enter the order of the filter (odd): '); 
M = (N - 1) / 2; % Mid-point for odd-order filter
n = 0:N-1; % Index from 0 to N-1
e=0.0001;
d = pi * (n - M+e);
a = sin(wc1 * (n - M+e)); 
b = sin(wc2 * (n - M+e)); 
c = sin(pi * (n - M+e)); 
% Define filter responses 
hd1 = a ./ d; %Low pass filter 
hd2 = (c - a) ./ d; % High pass filter 
hd3 = (b - a) ./ d; % Band pass filter
hd4 = (a - b + c) ./ d; % Band stop filter
% Define window functions 
w1 = rectwin(N); 
w2 = hamming(N); 
w3 = hanning(N); 
w4 = blackman(N); 
w = 0:0.008:pi; % Frequency vector for plotting 
% Apply windowing functions to each filter 
hn1 = hd1 .* w1';
hn2 = hd2 .* w1'; 
hn3 = hd3 .* w1'; 
hn4 = hd4 .* w1'; 
hn5 = hd1 .* w2';
hn6 = hd2 .* w2'; 
hn7 = hd3 .* w2'; 
hn8 = hd4 .* w2';
hn9 = hd1 .* w3'; 
hn10 = hd2 .* w3'; 
hn11 = hd3 .* w3'; 
hn12 = hd4 .* w3'; 
hn13 = hd1 .* w4'; 
hn14 = hd2 .* w4'; 
hn15 = hd3 .* w4'; 
hn16 = hd4 .* w4';
% Calculate the frequency response using freqz
h1 = freqz(hn1, 1, w);
h2 = freqz(hn2, 1, w);
h3 = freqz(hn3, 1, w);
h4 = freqz(hn4, 1, w);
h5 = freqz(hn5, 1, w); 
h6 = freqz(hn6, 1, w); 
h7 = freqz(hn7, 1, w); 
h8 = freqz(hn8, 1, w); 
h9 = freqz(hn9, 1, w); 
h10 = freqz(hn10, 1, w); 
h11 = freqz(hn11, 1, w); 
h12 = freqz(hn12, 1, w);
h13 = freqz(hn13, 1, w); 
h14 = freqz(hn14, 1, w); 
h15 = freqz(hn15, 1, w); 
h16 = freqz(hn16, 1, w); 
% Plot frequency responses of each filter 
figure; 
% Rectangular Window
subplot(4, 4, 1);
plot(w, abs(h1), 'b-');
xlabel('Frequency');
ylabel('Magnitude');
title('LPF Rect - 23485A0423');
subplot(4, 4, 2);
plot(w, abs(h2), 'b-');
xlabel('Frequency');
ylabel('Magnitude');
title('HPF Rect - 23485A0423');
subplot(4, 4, 3);
plot(w, abs(h3), 'b-');
xlabel('Frequency');
ylabel('Magnitude');
title('BPF Rect - 23485A0423');
subplot(4, 4, 4);
plot(w, abs(h4), 'b-');
xlabel('Frequency');
ylabel('Magnitude');
title('BSF Rect - 23485A0423');
% Hamming Window
subplot(4, 4, 5);
plot(w, abs(h5), 'b-');
xlabel('Frequency');
ylabel('Magnitude');
title('LPF Hamming - 23485A0423');
subplot(4, 4, 6);
plot(w, abs(h6), 'b-');
xlabel('Frequency');
ylabel('Magnitude');
title('HPF Hamming - 23485A0423');
subplot(4, 4, 7);
plot(w, abs(h7), 'b-');
xlabel('Frequency');
ylabel('Magnitude');
title('BPF Hamming - 23485A0423');
subplot(4, 4, 8);
plot(w, abs(h8), 'b-');
xlabel('Frequency');
ylabel('Magnitude');
title('BSF Hamming - 23485A0423');
% Hanning Window
subplot(4, 4, 9);
plot(w, abs(h9), 'b-');
xlabel('Frequency');
ylabel('Magnitude');
title('LPF Hanning - 23485A0423');
subplot(4, 4, 10);
plot(w, abs(h10), 'b-');
xlabel('Frequency');
ylabel('Magnitude');
title('HPF Hanning - 23485A0423');
subplot(4, 4, 11);
plot(w, abs(h11), 'b-');
xlabel('Frequency');
ylabel('Magnitude');
title('BPF Hanning - 23485A0423');
subplot(4, 4, 12);
plot(w, abs(h12), 'b-');
xlabel('Frequency');
ylabel('Magnitude');
title('BSF Hanning - 23485A0423');
% Blackman Window
subplot(4, 4, 13);
plot(w, abs(h13), 'b-');
xlabel('Frequency');
ylabel('Magnitude');
title('LPF Blackman - 23485A0423');
subplot(4, 4, 14);
plot(w, abs(h14), 'b-');
xlabel('Frequency');
ylabel('Magnitude');
title('HPF Blackman - 23485A0423');
subplot(4, 4, 15);
plot(w, abs(h15), 'b-');
xlabel('Frequency');
ylabel('Magnitude');
title('BPF Blackman - 23485A0423');
subplot(4, 4, 16);
plot(w, abs(h16), 'b-');
xlabel('Frequency');
ylabel('Magnitude');
title('BSF Blackman - 23485A0423');