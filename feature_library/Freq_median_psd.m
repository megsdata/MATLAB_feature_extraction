function output = median_psd(t_signal, t_start, t_end)
%MEDIAN POWER SPECTRAL DENSITY ESTIMATE 
%   
sig_contrac = t_signal(t_start:t_end);
output = median(periodogram(sig_contrac));
end