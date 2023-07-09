function output = Time_mean_xcorr(t_signal, t_start, t_end)
%Sum of Autocorrelation
%
val = t_signal(t_start:t_end);
output = mean(xcorr(val));
end