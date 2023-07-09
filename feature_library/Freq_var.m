function output = Freq_var(t_signal, t_start, t_end)
%VARIANCE OF FFT 
%   
sig_contrac = t_signal(t_start:t_end);
sig_freq = fft(sig_contrac);
output = var(sig_freq);
end