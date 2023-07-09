function output = Time_skewness(t_signal, t_start, t_end)
%CONTRACTION SKEWNESS 
%  
output = kurtosis(t_signal(t_start:t_end));
end