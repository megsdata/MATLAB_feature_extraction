function y = EMGfilter(input_signal, t, Fs)
%EMGFilter bandpass and notch filter the EMG signal
%  assumes EMG is the first channel (Var1)
    arguments
        input_signal = 1;
        t = 1;
        Fs = 5000;
    end
sig = input_signal;
freq_low = 20;
freq_high = 500;
[z,p,k]=butter(8,[freq_low freq_high]/(Fs/2),'bandpass');
[sos,g]=zp2sos(z,p,k);
fvtool(sos)
filt_sig = filtfilt(sos,g,sig); 
clean_sig = abs(filt_sig-mean(filt_sig));
wo = 50/(Fs/2);  
bw = wo/35; %35 is the filter Quality factor
%bw = wo/0.04;
[b,a] = iirnotch(wo,bw);
%fvtool(b,a);
y = filtfilt(b, a, clean_sig);
y = abs(y);
%produce plots of the results
%figure
%subplot(2, 1, 2)
%plot(t, y)
%title("Filtered signal");
%subplot(2, 1, 1)
%plot(t, abs(sig-mean(sig)))
%plot(t, sig)
%title("Original Signal");
end