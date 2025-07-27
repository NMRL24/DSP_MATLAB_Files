clc;
clear all;
close all;
 
x = input('Enter the input sequence: ');
N = length(x);
 
% Calculate DFT
for k = 1:N
    X(k) = 0;
    for n = 1:N
        X(k) = X(k) + x(n) * exp(-1j * 2 * pi * (n - 1) * (k - 1) / N);
    end
end
fprintf('DFT sequence\n');
disp(X);
 
M = abs(X);    % Magnitude spectrum
fprintf('Magnitude spectrum');
disp(M);
p = angle(X);  % Phase spectrum
fprintf('Phase spectrum');
disp(p);
 
% Create subplots in a 2x2 grid
subplot(2, 2, 1);
stem(0:N-1, x, 'filled');
xlabel('Time');
ylabel('Amplitude');
title('Input Sequence 23485A0424');
 
subplot(2, 2, 2);
stem(0:N-1, real(X), 'filled');  % Only real part of the DFT
xlabel('Discrete Frequency');
ylabel('Amplitude');
title('DFT Sequence (Real part) 23485A0424');
 
subplot(2, 2, 3);
stem(0:N-1, M, 'filled');
xlabel('Discrete Frequency');
ylabel('Magnitude');
title('Magnitude Spectrum 23485A0424');
 
subplot(2, 2, 4);
stem(0:N-1, p, 'filled');
xlabel('Discrete Frequency');
ylabel('Phase');
title('Phase Spectrum 23485A0424');