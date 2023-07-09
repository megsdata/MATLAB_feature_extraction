function env = findEnvelope(filename)
%FIND_ENVELOPE Summary of this function goes here
%   Find the envelope of input EMG signal t_EMG
%   and returns the enveloped signal of the same
%   length
%   Inputs:
%   filename (string)

t_signal = readtable(filename, 'VariableNamingRule', 'preserve');
t_EMG = t_signal.EMG;
Fs = 5000;
Ts = 1/Fs;
L = size(t_EMG(:,1));
t = (0:L-1)*Ts;
env = envelope(t_EMG, 3000, 'rms');


end