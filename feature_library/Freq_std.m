function output = Freq_std(t_signal, t_start, t_end)
%STANDARD DEVIATION OF FFT 
%   
sig_contrac = t_signal(t_start:t_end);
sig_freq = fft(sig_contrac);
output = std(sig_freq);
end