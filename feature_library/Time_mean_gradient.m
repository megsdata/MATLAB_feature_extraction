function output = Time_mean_gradient(t_signal, t_start, t_end)
%CONTRACTION MEAN OF THE GRADIENT 
%  to estimate the values of the partial derivative
val = t_signal(t_start:t_end);
output = mean(gradient(val));
end