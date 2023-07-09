function output = Time_normalizedRMS(t_signal, t_start, t_end)
%NORMALIZED MEAN
%  the peak (max amplitude of the EMG signal) is used
%  normalize the amplitude values and compute the mean
output = sqrt(mean2(t_signal(t_start:t_end).^2/max(t_signal(t_start:t_end).^2)));


end