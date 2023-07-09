function output = Time_normalizedMean(t_signal, t_start, t_end)
%NORMALIZED MEAN
%  the peak (max amplitude of the EMG signal) is used
%  normalize the amplitude values and compute the mean
output = mean2(t_signal(t_start:t_end)/max(t_signal(t_start:t_end)));
end