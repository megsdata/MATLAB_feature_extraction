function output = Time_var(t_signal, t_start, t_end)
%CONTRACTION VARIANCE 
%  
val = t_signal(t_start:t_end);
output = var(val);
end