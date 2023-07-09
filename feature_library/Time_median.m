function output = Time_median(t_signal, t_start, t_end)
%MEDIAN
%
val = t_signal(t_start:t_end);
output = median(val);
end