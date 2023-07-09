function output = Time_ZCR(t_signal, t_start, t_end)
%CONTRACTION ZERO CROSS RATE 
% 
val = t_signal(t_start:t_end);
output = zerocrossrate(val);
end