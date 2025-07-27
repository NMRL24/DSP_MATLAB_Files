function z=dft24(M,N) 
for k=1:N 
    z(k)=0; 
    for n=1:N 
        z(k)=z(k)+M(n)*exp(-1i*2*pi*(n-1)*(k-1)/N); 
end 
end 
