function output = Freq_median(t_signal, t_start, t_end)
%ROOT MEAN SQUARE 
%
output = medfreq(t_signal(t_start:t_end), 5000);
end