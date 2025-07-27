clc; clear all; close all;

x = input('Enter the first sequence: ');
h = input('Enter the second sequence: ');

y = xcorr(x, h); % Cross-correlation of x and h

subplot(3,1,1);
stem(x, 'filled');
ylabel('Amplitude');
xlabel('x(n)');
title('Input Signal - 23485A0419');

subplot(3,1,2);
stem(h, 'filled');
ylabel('Amplitude');
xlabel('h(n)');
title('Impulse Response - 23485A0419');

subplot(3,1,3);
stem(y, 'filled');
ylabel('Amplitude');
xlabel('y(n)');
title('Output Signal - 23485A0419');
