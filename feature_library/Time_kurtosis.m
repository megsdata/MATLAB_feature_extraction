function output = Time_kurtosis(t_signal, t_start, t_end)
%CONTRACTION KURTOSIS 
%  
output = kurtosis(t_signal(t_start:t_end));
end