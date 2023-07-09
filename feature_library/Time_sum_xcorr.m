function output = Time_sum_xcorr(t_signal, t_start, t_end)
%Sum of Autocorrelation
%
val = t_signal(t_start:t_end);
output = sum(xcorr(val));
end