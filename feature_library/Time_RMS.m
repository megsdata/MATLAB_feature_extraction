function output = Time_RMS(t_signal, t_start, t_end)
%ROOT MEAN SQUARE 
%
val = t_signal(t_start:t_end);
%output = sqrt(mean2(val.^2));
output = rms(val);
end