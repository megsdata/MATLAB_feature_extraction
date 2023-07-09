function [MMG_x, MMG_y, MMG_z] = MMGfilter(input_signal, t, Fs)
%EMGFilter bandpass and notch filter the EMG signal
%  assumes MMG is the channel 5, 6, 7
    arguments
        input_signal = 1;
        t = 1;
        Fs = 5000;
    end
sig_x = input_signal.Var5;
sig_y = input_signal.Var6;
sig_z = input_signal.Var7;
freq_low = 5;
freq_high = 100;
[z,p,k]=butter(8,[freq_low freq_high]/(Fs/2),'bandpass');
[sos,g]=zp2sos(z,p,k);
sig_filt_x= filtfilt(sos,g,sig_x);
sig_filt_y= filtfilt(sos,g,sig_y); 
sig_filt_z= filtfilt(sos,g,sig_z); 
MMG_x = abs(sig_filt_x-mean(sig_filt_x));
MMG_y = abs(sig_filt_y-mean(sig_filt_y));
MMG_z = abs(sig_filt_z-mean(sig_filt_z));
% figure
% subplot(2, 1, 2)
% plot(t, MMG_x)
% title("Filtered signal");
% subplot(2, 1, 1)
% plot(t, abs(sig_x-mean(sig_x)))
% title("Original Signal");

end