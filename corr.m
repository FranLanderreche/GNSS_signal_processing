function corr = corr(a,b)

corr = fftshift(ifft(fft(a).*conj(fft(b))));

end