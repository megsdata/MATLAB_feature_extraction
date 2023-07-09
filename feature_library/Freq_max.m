function output = Freq_max(t_signal, t_start, t_end)
%MEAN OF FFT 
%   
sig_contrac = t_signal(t_start:t_end);
output = max(fft(sig_contrac));
end