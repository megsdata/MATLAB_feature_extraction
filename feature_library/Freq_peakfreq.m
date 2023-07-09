function output = Freq_peakfreq(t_signal, t_start, t_end)
%PEAK FREQUENCY
%frequency at highest amplitude
val = t_signal(t_start:t_end);
y = fft(val); 
%[maxAmp, maxAmpIdx] = max(abs(y));
output = max(abs(y));

end