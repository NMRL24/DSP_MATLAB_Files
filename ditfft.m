clc;clear all;close all;

% Input sequence and length
x = input('Enter the input sequence = ');
N = input('Enter the point = ');

% Get the length of the input sequence
n = length(x);
fprintf('Length of input sequence: ');
disp(n);

% Pad the sequence with zeros to length N
x = [x zeros(1, N - n)];
fprintf('Final input sequence: \n');
disp(x);

% Bit-reversal order
y = bitrevorder(x);
fprintf('Bit-reversed sequence: \n');
disp(y);

% Number of stages in FFT (log2 of N)
M = log2(N);

% FFT computation using Cooley-Tukey algorithm
for m = 1:M
    d = 2^m;  % Size of the current FFT block
    for i = 1:d:N-d+1  % Start index of each FFT block
        for k = 0:(d/2)-1  % Calculate the twiddle factor
            w = exp(-1i * 2 * pi * k / d); % Twiddle factor
           
            z1 = y(i + k);  % First element of the pair
            z2 = y(i + k + d / 2);  % Second element of the pair
            % FFT computation: combine pairs
            y(i + k) = z1 + w * z2;   %missed w here
            y(i + k + d / 2) = z1 - w * z2;
        end
    end
end

% Display final FFT sequence
fprintf('Point FFT sequence: \n');
disp(y);

% Plotting
subplot(3, 1, 1);
stem(0:N-1, x, 'filled');
xlabel('Time');
ylabel('Amplitude');
title('Input Sequence 23485A0424');
grid 'on'

subplot(3, 1, 2);
stem(0:N-1, abs(y), 'filled');
xlabel('Frequency');
ylabel('Magnitude');
title('Output Magnitude Spectrum 23485A0424');
grid 'on'

subplot(3, 1, 3);
stem(0:N-1, angle(y), 'filled');
xlabel('Frequency');
ylabel('Radians');
title('Output Phase Spectrum 23485A0424');
grid 'on'