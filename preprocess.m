function [EMG, pulse, MMG_x, MMG_y, MMG_z] = preprocess(relPath)
%PREPROCESS function loads log file, runs entire preprocessing
%   code and outputs .csv of filtered signal

[T, t] = loadLogFile(relPath);
%preprocessing
EMG_clean = EMGfilter(T.Var1, t);
stim = T.Var3;
pulse = T.Var2;
[MMG_x, MMG_y, MMG_z] = MMGfilter(T, t);
%write filtered data to .csv
%all_columns = [EMG, pulse, stim, MMG_x, MMG_y, MMG_z, T.Var7, T.Var8];
all_columns = [EMG_clean, pulse, stim, MMG_x, MMG_y, MMG_z, T.Var7, T.Var8];
%writematrix(all_columns, strcat('filtered', relPath, '.csv'));
data = array2table(all_columns);
data.Properties.VariableNames(1:8) = {'EMG', 'Pulse','Stimulus', 'MMG_x', 'MMG_y', 'MMG_z', 'Ch 7', 'Ch 8'};
writetable(data, strcat(relPath, '_FILTERED.csv'));
end