function output = Freq_mean(t_signal, t_start, t_end)
%MEAN OF FFT 
%   
sig_contrac = t_signal(t_start:t_end);
output = mean(fft(sig_contrac));
end