clc;close all;clear all;M = input('Enter the input sequence: '); 
N = input('Enter the length of DFT: '); 

% Zero-padding the input sequence if necessary
M = [M, zeros(1, N - length(M))]; 

disp('Final input sequence:');
disp(M); 

% Initialize DFT output arrays
z1 = zeros(1, N);
z2 = zeros(1, N);

for k = 1:N 
    for n = 1:N 
        z1(k) = z1(k) + M(n) * exp(-1i * 2 * pi * (n - 1) * (k - 1) / N); 
        z2(k) = z2(k) + M(n) * exp(-1i * 2 * pi * (n - 1) * (k + N - 1) / N); 
    end 
end 

disp('X(k):');
disp(z1); 

disp('X(k+N):');
disp(z2); 

% Plot the input sequence
subplot(3,2,1);
stem(0:N-1, M, 'filled');
xlabel('Time index (n)');
ylabel('Amplitude');
title('Input Sequence 23485A0424');

% Plot the DFT magnitude spectrum X(k)
subplot(3,2,2);
stem(0:N-1, abs(z1), 'filled');
xlabel('Frequency index (k)');
ylabel('Magnitude');
title('Magnitude Spectrum X(k) 23485A0424');

% Plot the DFT magnitude spectrum X(k+N)
subplot(3,2,3);
stem(0:N-1, abs(z2), 'filled');
xlabel('Frequency index (k)');
ylabel('Magnitude');
title('Magnitude Spectrum X(k+N) 23485A0424');

% Plot the DFT magnitude spectrum X(k)
subplot(3,2,4);
stem(0:N-1, angle(z1), 'filled');
xlabel('Frequency index (k)');
ylabel('Magnitude');
title('phase Spectrum X(k) 23485A0424');

% Plot the DFT magnitude spectrum X(k+N)
subplot(3,2,5);
stem(0:N-1, angle(z2), 'filled');
xlabel('Frequency index (k)');
ylabel('Magnitude');
title('phase Spectrum X(k+N) 23485A0424');