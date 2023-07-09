function output = Freq_min(t_signal, t_start, t_end)
%MEAN OF FFT 
%   
sig_contrac = t_signal(t_start:t_end);
output = min(fft(sig_contrac));
end