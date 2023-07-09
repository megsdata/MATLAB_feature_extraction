function output = Time_meanAbsVal(t_signal, t_start, t_end)
%MEAN ABSOLUTE VALUE 
%   Returns the mean absolute value
val = t_signal(t_start:t_end);
output = mad(val);
end