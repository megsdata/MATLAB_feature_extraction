function output = Freq_skewness(t_signal, t_start, t_end)
%SKEWNESS OF FFT 
%   
sig_contrac = t_signal(t_start:t_end);
output = skewness(fft(sig_contrac));
end