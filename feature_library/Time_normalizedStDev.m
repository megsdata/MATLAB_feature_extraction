function output = Time_normalizedStDev(t_signal, t_start, t_end)
%NORMALIZED STANDARD DEVIATION
%  the peak (max amplitude of the EMG signal) is used
%  normalize the amplitude values and compute the mean
output = std(t_signal(t_start:t_end)/max(t_signal(t_start:t_end)));
end