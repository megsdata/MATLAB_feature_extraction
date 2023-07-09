function output = Time_MCR(t_signal, t_start, t_end)
%CONTRACTION MEAN ZERO CROSS RATE 
% 
val = t_signal(t_start:t_end);
output = mean(zerocrossrate(val));
end