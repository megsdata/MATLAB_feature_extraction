  function [output_array, output_table] = findSingleContraction(filename, ~)
%FIND_SINGLE_CONTRACTION
%   Performs thresholding, envelope detection
%   Finds the pulse width and plots outputs
%   Outputs are array and table format of contraction start and end times
%   for a given single contraction
%   Optional image outputs to PNG file

%prep data for output`
date = string(datetime("today"));
try
    t_signal = readtable(filename, 'VariableNamingRule', 'preserve');
    [path, file, extension] = fileparts(filename);
    t_EMG = t_signal.EMG;
    Fs = 5000;
    Ts = 1/Fs;
    L = size(t_EMG(:,1));
    t = (0:L-1)*Ts;
    %threshold above 300mV to remove signal ramp
    thresh_data = t_EMG;
    thresh_data(thresh_data < 300 ) = 0;
    %envelope detection
    %env = envelope(thresh_data, 3000, 'rms'); %Hilbert filter of 3000 using root mean square
    env = envelope(t_EMG, 3000, 'rms');
    [w, init, final] = pulsewidth(env, Fs);
    f1 = figure;
    pulsewidth(env, Fs)
    mycontractions = [w, init, final];
    %plot all contractions for entire trial
    ID = sscanf(file, '%3d_FILTERED');

    %%COMMENT OUT THE IMAGES
%     f2 = figure;
%     subplot(2,1,1)
%     plot(t, env)
%     xlabel('Time (s)')
%     ylabel('Amplitude (mV)')
%     title(['Preprocessed sEMG for trial ID ', num2str(ID)])
%     subplot(2,1,2)
%     pspectrum(env, Fs)
%     exportgraphics(f1, strcat(num2str(ID), '_pulsewidth.png'));
%     exportgraphics(f2, strcat(num2str(ID), '_plot.png'));
    
    
    %loop through each contraction
    counter = 0;
    for i=1:1:length(mycontractions(:,1))
        counter = counter + 1;
        t_lower = ceil(mycontractions(i, 2)*Fs);
        t_upper = floor(mycontractions(i, 3)*Fs);
        one_contraction = thresh_data(t_lower:t_upper);
        %plotter(t, t_lower, t_upper, one_contraction, counter, file, write_img_path)




%         f1 = figure;
%         subplot(2,1,1)
%         plot(t(t_lower:t_upper),one_contraction)
%         xlabel('Time (s)')
%         ylabel('Amplitude (mV)')
%         title(['Preprocessed Contraction # ', num2str(counter)])
%         subplot(2,1,2)
%         pspectrum(one_contraction, Fs)

        %optional: printing out images
%         if write_img_path ~= ""
%             exportgraphics(f1, fullfile(write_img_path, strcat(file, '_', num2str(counter), '_plot.png')))
%         end
    end
    output_array = mycontractions;
    output_table = array2table(mycontractions);
    output_table.Properties.VariableNames(1:3) = {'Pulse Width', 'Contraction Start','Contraction End'};
catch ME
    ME.message
    ME.identifier
    ME.cause
    disp(filename)
    for i = 1:numel(ME.stack)
        ME.stack(i)
    end
end

end