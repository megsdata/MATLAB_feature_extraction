function output = Freq_avg_power(t_signal, t_start, t_end)
%BAND POWER or AVERAGE POWER
%returns the average power in the input signal t_signal

sig_contrac = t_signal(t_start:t_end);
%equivalently, rms(sig_contrac).^2
output = bandpower(sig_contrac);

end