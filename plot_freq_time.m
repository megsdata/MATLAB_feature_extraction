function  plot_freq_time(t_signal)
%PLOT FREQUENCY TIME Summary of this function goes here
%   input is a signal array (such as EMG, MMG)
%   sampling frequency is fixed at 5000 Hz
Fs = 5000;
[p,f,t] = pspectrum(t_signal,Fs,'spectrogram');
waterfall(f,t,p')
title('Frequency-Time Plot EMG for Trial ID #123')
xlabel('Frequency (Hz)')
ylabel('Time (seconds)')
xlim([0 200]) %set frequency axis limit of 200 Hz
wtf = gca;
wtf.XDir = 'reverse';
view([30 45])
end