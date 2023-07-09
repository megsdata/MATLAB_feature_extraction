function output = Time_SNR(t_signal, t_start, t_end)
%SIGNAL TO NOISE RATIO
%
val = t_signal(t_start:t_end);
%output = sqrt(mean2(val.^2));
output = snr(val, 5000, 6);
end