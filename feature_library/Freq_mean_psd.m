function output = mean_psd(t_signal, t_start, t_end)
%MEAN POWER SPECTRAL DENSITY ESTIMATE 
%   
sig_contrac = t_signal(t_start:t_end);
output = mean2(periodogram(sig_contrac));
end