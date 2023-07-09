function plotter(t, t_lower, t_upper, one_contraction, counter, file, write_img_path)
%PLOTTER Function to help visualize contraction data
%   

%constants
Fs = 5000;
ID = sscanf(file, '%3d_FILTERED');
%plot the figure
f1 = figure;
subplot(2,1,1)
plot(t(t_lower:t_upper),one_contraction)
xlabel('Time (s)')
ylabel('Amplitude (mV)')
title(['Preprocessed Contraction # ', num2str(counter), ' for trial ID ', num2str(ID)])
subplot(2,1,2)
pspectrum(one_contraction, Fs)

%optional: printing out images
if write_img_path ~= ""
    exportgraphics(f1, fullfile(write_img_path, strcat(file, '_', num2str(counter), '_plot.png')))
end

end