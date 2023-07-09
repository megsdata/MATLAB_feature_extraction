function output = Freq_kurtosis(t_signal, t_start, t_end)
%KURTOSIS OF FFT 
%   
sig_contrac = t_signal(t_start:t_end);
sig_freq = fft(sig_contrac);
output = kurtosis(sig_freq);
end