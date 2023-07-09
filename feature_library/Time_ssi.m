function output = Time_ssi(t_signal, t_start, t_end)
%SSI 
%   simple square integrated
output = 0;
for i = t_start:t_end
    output = output + t_signal(floor(i).^2);
end