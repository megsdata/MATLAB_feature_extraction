function output = Time_AOC(t_signal, t_start, t_end)
%CONTRACTION AREA UNDER CURVE 
%   Use of trapezoidal method with unit spacing 
%   to approximate the area under the curve (integral)
%   of signal
val = t_signal(t_start:t_end);
output = trapz(val);
end