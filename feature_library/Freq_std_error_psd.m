function output = Freq_std_error_psd(t_signal, t_start, t_end)
%STANDARD ERROR OF POWER SPECTRAL DENSITY ESTIMATE 
%   
sig_contrac = t_signal(t_start:t_end);
val = periodogram(sig_contrac);
output = std(val)/sqrt(t_end-t_start);
end