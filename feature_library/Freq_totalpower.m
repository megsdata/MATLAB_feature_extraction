function output = Freq_totalpower(t_signal, t_start, t_end)
%FREQUENCY DOMAIN - TOTAL POWER 
%
F = fft(t_signal(t_start:t_end)); 
pow = F.*conj(F);
output = sum(pow);
end