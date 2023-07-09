function output = Time_std_error(t_signal, t_start, t_end)
%STANDARD ERROR
%  
val = t_signal(t_start:t_end);
output = std(val)/sqrt(t_end-t_start);
end