function output = Time_std_xcorr(t_signal, t_start, t_end)
%Standard deviation of Autocorrelation
%
val = t_signal(t_start:t_end);
output = std(xcorr(val));
end