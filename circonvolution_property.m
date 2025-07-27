clc; clear all; close all;
a = input('Enter x(n): ');
b = input('Enter h(n): ');
n = input('Enter the length of DFT: ');

% Zero-padding
a = [a, zeros(1, n - length(a))];
b = [b, zeros(1, n - length(b))];

disp('Input 1 X(n):'); disp(a);
disp('Input 2 H(n):'); disp(b);

% Circular convolution
c = cconv(a, b, n);
C = fft(c);
disp('Circular Convolution:'); disp(c);
disp('DFT of Circular Convolution:'); disp(C);

% DFT of individual inputs
X = fft(a);
Y = fft(b);
disp('DFT of X(n):'); disp(X);
disp('DFT of H(n):'); disp(Y);

% Multiplication of individual DFTs
z = X .* Y;
disp('Multiplication of Individual DFTs:'); disp(z);

if z==C
    disp('Circular convolution satisfied');
else
    disp('Circular convolution not satisfied');
end

% Plotting results
subplot(2,2,1);
stem(0:length(a)-1, a, 'filled');
xlabel('Time');
ylabel('Amplitude');
title('Input 1 X(n) 23485A0424');

subplot(2,2,2);
stem(0:length(b)-1, b, 'filled');
xlabel('Time');
ylabel('Amplitude');
title('Input 2 H(n) 23485A0424');

subplot(2,2,3);
stem(0:n-1, abs(C), 'filled');
xlabel('Frequency');
ylabel('Magnitude');
title('DFT of Convoluted Sequence 23485A0424');

subplot(2,2,4);
stem(0:n-1, abs(z), 'filled');
xlabel('Frequency');
ylabel('Magnitude');
title('Product of Individual DFTs 23485A0424');
