clc; 
clear all; 
close all; 
  
x1 = input('Enter the first sequence: '); 
x2 = input('Enter the second sequence: '); 
L1 = length(x1); L2 = length(x2); L = max(L1, L2); 
N = input('Enter the length of DFT: '); 
  
if (L1 ~= L2) 
    disp('Linearity not satisfied'); 
elseif (N >= L) 
    % Padding the sequences to length N 
    x1 = [x1, zeros(1, N - L1)]; 
    x2 = [x2, zeros(1, N - L2)]; 
     
    L1 = length(x1); L2 = length(x2); 
  
    % Computing DFTs 
    X1 = dft24(x1, N); 
    X2 = dft24(x2, N); 
  
    % Sum of x1 and x2 
    x3 = x1 + x2; 
    X3 = dft24(x3, N); 
    X4 = X1 + X2;

    disp('x1:');disp(x1);disp('x2:');disp(x2);disp('x3:');disp(x3);
    disp('DFT(x1 + x2):');
    disp(X3);
    disp('DFT(x1)');disp(X1);
    disp('DFT(x2)');disp(X2);
    disp('DFT(x1)+DFT(x2):'); 
    disp(X4); 
  
    % Plotting the sequences 
    subplot(2, 2, 1); 
    stem(0:N-1, x1,'filled'); 
    xlabel('Time'); 
    ylabel('Amplitude'); 
    title('x1 23485A0424'); 
  
    subplot(2, 2, 2); 
    stem(0:N-1, x2,'filled'); 
    xlabel('Time'); 
    ylabel('Amplitude'); 
    title('x2 23485A0424'); 
  
    subplot(2, 2, 3); 
    stem(0:N-1, X3,'filled'); 
    xlabel('frequency'); 
    ylabel('magnitude'); 
    title('DFT(x1 + x2) 23485A0424'); 
  
    subplot(2,2, 4); 
    stem(0:N-1, X4,'filled'); 
    xlabel('frequency'); 
    ylabel('magnitude'); 
    title('DFT(x1)+DFT(x2) 23485A0424'); 
  
else 
    disp('Linearity not satisfied'); 
end
