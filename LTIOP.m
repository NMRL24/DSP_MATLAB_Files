clc;
clear all;
close all;

% Input sequences and their starting points
x = input('Enter first input sequence: ');
h = input('Enter second input sequence: ');
N1 = input('Enter the starting point of the first sequence: ');
N2 = input('Enter the starting point of the second sequence: ');

% Calculate the starting point of the output sequence
N = N1 + N2;

% Lengths of input sequences
L1 = length(x);
L2 = length(h);

% Total length after convolution
L = L1 + L2 - 1;

% Zero-padding the sequences
x1 = [x, zeros(1, L - L1)];
h1 = [h, zeros(1, L - L2)];

% Initialize the output sequence
y = zeros(1, L);

% Linear convolution using nested loops
for n = 1:L
    for k = 1:L
        if (n - k + 1 > 0 && n - k + 1 <= L2) % Ensure valid indexing
            y(n) = y(n) + x1(k) * h1(n - k + 1);
        end
    end
end

% Plotting the sequences
% First input sequence
t1 = N1:(L1 + N1 - 1);
subplot(3, 1, 1);
stem(t1, x, 'filled');
xlabel('Time');
ylabel('Amplitude');
title('First Input Sequence 23485A0423'); % Updated title

% Second input sequence
t2 = N2:(L2 + N2 - 1);
subplot(3, 1, 2);
stem(t2, h, 'filled');
xlabel('Time');
ylabel('Amplitude');
title('Second Input Sequence 23485A0423'); % Updated title

% Convoluted sequence
t3 = N:(L + N - 1);
subplot(3, 1, 3);
stem(t3, y, 'filled');
xlabel('Time');
ylabel('Amplitude');
title('Convoluted Sequence 23485A0423'); % Updated title
