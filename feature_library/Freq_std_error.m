function output = Freq_std_error(t_signal, t_start, t_end)
%STANDARD ERROR
%  
val = t_signal(t_start:t_end);
freq_val = fft(val);
output = std(freq_val)/sqrt(t_end-t_start);
end