clc; 
clear; 
close all;

% Define the discrete sequence
x = input('enter the input signal');  % Example sequence
n = 0:length(x)-1;  % Time indices (assuming sequence starts at n=0)


Xz = zeros(1,length(x)-1);  % Initialize Z-transform result

% Compute Z-transform manually
for k = 1:length(x)
    Xz = Xz + x(k) * z^(-n(k));
end

% Display the Z-transform result
disp('Z-transform of the given sequence:');
disp(Xz);

% Plot the input sequence
subplot(1,3,1);
stem(n, x, 'filled');
xlabel('Time index (n)');
ylabel('Amplitude');
title('Input Signal');

% Plot magnitude and phase response
subplot(1,3,2);
fplot(abs(Xz), [0.1, 10]);
xlabel('z');
ylabel('|X(z)|');
title('Magnitude Response');

subplot(1,3,3);
fplot(angle(Xz), [0.1, 10]);
xlabel('z');
ylabel('∠X(z)');
title('Phase Response');