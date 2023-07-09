function writeParticipants_v2(filename, features_table, trialID_preprocessed )
%WRITE_PARTICIPANTS 
%   Write extracted features to the individual participant spreadsheets

try
    T = readtable(filename, "VariableNamingRule","preserve");
    fprintf("Subject table height is %d.\n", height(T))
    fprintf("Feature table height is %d.\n", height(features_table))
    if height(features_table) == height(T)
        T.EMG_i = features_table.EMG_i;
        T.EMG_t_start = features_table.EMG_t_start;
        T.EMG_t_end = features_table.EMG_t_end;
        T.EMG_Time_length = features_table.EMG_Time_length;
        T.EMG_Time_mean = features_table.EMG_Time_mean;
        T.EMG_Time_median = features_table.EMG_Time_median;
        T.EMG_Time_max = features_table.EMG_Time_max;
        T.EMG_Time_min = features_table.EMG_Time_min;
        T.EMG_Time_std_dev = features_table.EMG_Time_std_dev;
        T.EMG_Time_std_error = features_table.EMG_Time_std_error;
        T.EMG_Time_var = features_table.EMG_Time_var;
        T.EMG_Time_RMS = features_table.EMG_Time_RMS;
        T.EMG_Time_meanAbsVal = features_table.EMG_Time_meanAbsVal;
        T.EMG_Time_normalizedMean = features_table.EMG_Time_normalizedMean;
        T.EMG_Time_normalizedRMS = features_table.EMG_Time_normalizedRMS;
        T.EMG_Time_normalizedStDev = features_table.EMG_Time_normalizedStDev;
        T.EMG_Time_ssi = features_table.EMG_Time_ssi;
        T.EMG_Time_ZCR = features_table.EMG_Time_ZCR;
        T.EMG_Time_MCR = features_table.EMG_Time_MCR;
        T.EMG_Time_AOC = features_table.EMG_Time_AOC;
        T.EMG_Time_skewness = features_table.EMG_Time_skewness;
        T.EMG_Time_kurtosis = features_table.EMG_Time_kurtosis;
        T.EMG_Time_mean_gradient = features_table.EMG_Time_mean_gradient;
        T.EMG_Time_SNR = features_table.EMG_Time_SNR;
        T.EMG_Time_mean_xcorr = features_table.EMG_Time_mean_xcorr;
        T.EMG_Time_std_xcorr = features_table.EMG_Time_std_xcorr;
        T.EMG_Time_sum_xcorr = features_table.EMG_Time_sum_xcorr;
        T.EMG_Freq_mean = features_table.EMG_Freq_mean;
        T.EMG_Freq_median = features_table.EMG_Freq_median;
        T.EMG_Freq_max = features_table.EMG_Freq_max;
        T.EMG_Freq_min = features_table.EMG_Freq_min;
        T.EMG_Freq_std = features_table.EMG_Freq_std;
        T.EMG_Freq_std_error = features_table.EMG_Freq_std_error;
        T.EMG_Freq_var = features_table.EMG_Freq_var;
        T.EMG_Freq_peakfreq = features_table.EMG_Freq_peakfreq;
        T.EMG_Freq_avg_power = features_table.EMG_Freq_avg_power;
        T.EMG_Freq_totalpower = features_table.EMG_Freq_totalpower;
        T.EMG_Freq_skewness = features_table.EMG_Freq_skewness;
        T.EMG_Freq_kurtosis = features_table.EMG_Freq_kurtosis;
        T.EMG_Freq_mean_psd = features_table.EMG_Freq_mean_psd;
        T.EMG_Freq_median_psd = features_table.EMG_Freq_median_psd;
        T.EMG_Freq_std_error_psd = features_table.EMG_Freq_std_error_psd;
        T.EMG_MMGx_corr = features_table.('EMG;MMGx_corr');
        T.EMG_MMGy_corr = features_table.('EMG;MMGy_corr');
        T.EMG_MMGz_corr = features_table.('EMG;MMGz_corr');
        T.MMGx_MMGy_corr = features_table.('MMGx;MMGy_corr');
        T.MMGx_MMGz_corr = features_table.('MMGx;MMGz_corr');
        T.MMGy_MMGz_corr = features_table.('MMGy;MMGz_corr');
        T.MMGx_Time_mean = features_table.MMGx_Time_mean;
        T.MMGx_Time_median = features_table.MMGx_Time_median;
        T.MMGx_Time_max = features_table.MMGx_Time_max;
        T.MMGx_Time_min = features_table.MMGx_Time_min;
        T.MMGx_Time_std_dev = features_table.MMGx_Time_std_dev;
        T.MMGx_Time_std_error = features_table.MMGx_Time_std_error;
        T.MMGx_Time_var = features_table.MMGx_Time_var;
        T.MMGx_Time_RMS = features_table.MMGx_Time_RMS;
        T.MMGx_Time_meanAbsVal = features_table.MMGx_Time_meanAbsVal;
        T.MMGx_Time_normalizedMean = features_table.MMGx_Time_normalizedMean;
        T.MMGx_Time_normalizedRMS = features_table.MMGx_Time_normalizedRMS;
        T.MMGx_Time_normalizedStDev = features_table.MMGx_Time_normalizedStDev;
        T.MMGx_Time_ssi = features_table.MMGx_Time_ssi;
        T.MMGx_Time_ZCR = features_table.MMGx_Time_ZCR;
        T.MMGx_Time_MCR = features_table.MMGx_Time_MCR;
        T.MMGx_Time_AOC = features_table.MMGx_Time_AOC;
        T.MMGx_Time_skewness = features_table.MMGx_Time_skewness;
        T.MMGx_Time_kurtosis = features_table.MMGx_Time_kurtosis;
        T.MMGx_Time_mean_gradient = features_table.MMGx_Time_mean_gradient;
        T.MMGx_Time_SNR = features_table.MMGx_Time_SNR;
        T.MMGx_Time_mean_xcorr = features_table.MMGx_Time_mean_xcorr;
        T.MMGx_Time_std_xcorr = features_table.MMGx_Time_std_xcorr;
        T.MMGx_Time_sum_xcorr = features_table.MMGx_Time_sum_xcorr;
        T.MMGx_Freq_mean = features_table.MMGx_Freq_mean;
        T.MMGx_Freq_median = features_table.MMGx_Freq_median;
        T.MMGx_Freq_max = features_table.MMGx_Freq_max;
        T.MMGx_Freq_min = features_table.MMGx_Freq_min;
        T.MMGx_Freq_std = features_table.MMGx_Freq_std;
        T.MMGx_Freq_std_error = features_table.MMGx_Freq_std_error;
        T.MMGx_Freq_var = features_table.MMGx_Freq_var;
        T.MMGx_Freq_peakfreq = features_table.MMGx_Freq_peakfreq;
        T.MMGx_Freq_avg_power = features_table.MMGx_Freq_avg_power;
        T.MMGx_Freq_totalpower = features_table.MMGx_Freq_totalpower;
        T.MMGx_Freq_skewness = features_table.MMGx_Freq_skewness;
        T.MMGx_Freq_kurtosis = features_table.MMGx_Freq_kurtosis;
        T.MMGx_Freq_mean_psd = features_table.MMGx_Freq_mean_psd;
        T.MMGx_Freq_median_psd = features_table.MMGx_Freq_median_psd;
        T.MMGx_Freq_std_error_psd = features_table.MMGx_Freq_std_error_psd;
        T.MMGy_Time_mean = features_table.MMGy_Time_mean;
        T.MMGy_Time_median = features_table.MMGy_Time_median;
        T.MMGy_Time_max = features_table.MMGy_Time_max;
        T.MMGy_Time_min = features_table.MMGy_Time_min;
        T.MMGy_Time_std_dev = features_table.MMGy_Time_std_dev;
        T.MMGy_Time_std_error = features_table.MMGy_Time_std_error;
        T.MMGy_Time_var = features_table.MMGy_Time_var;
        T.MMGy_Time_RMS = features_table.MMGy_Time_RMS;
        T.MMGy_Time_meanAbsVal = features_table.MMGy_Time_meanAbsVal;
        T.MMGy_Time_normalizedMean = features_table.MMGy_Time_normalizedMean;
        T.MMGy_Time_normalizedRMS = features_table.MMGy_Time_normalizedRMS;
        T.MMGy_Time_normalizedStDev = features_table.MMGy_Time_normalizedStDev;
        T.MMGy_Time_ssi = features_table.MMGy_Time_ssi;
        T.MMGy_Time_ZCR = features_table.MMGy_Time_ZCR;
        T.MMGy_Time_MCR = features_table.MMGy_Time_MCR;
        T.MMGy_Time_AOC = features_table.MMGy_Time_AOC;
        T.MMGy_Time_skewness = features_table.MMGy_Time_skewness;
        T.MMGy_Time_kurtosis = features_table.MMGy_Time_kurtosis;
        T.MMGy_Time_mean_gradient = features_table.MMGy_Time_mean_gradient;
        T.MMGy_Time_SNR = features_table.MMGy_Time_SNR;
        T.MMGy_Time_mean_xcorr = features_table.MMGy_Time_mean_xcorr;
        T.MMGy_Time_std_xcorr = features_table.MMGy_Time_std_xcorr;
        T.MMGy_Time_sum_xcorr = features_table.MMGy_Time_sum_xcorr;
        T.MMGy_Freq_mean = features_table.MMGy_Freq_mean;
        T.MMGy_Freq_median = features_table.MMGy_Freq_median;
        T.MMGy_Freq_max = features_table.MMGy_Freq_max;
        T.MMGy_Freq_min = features_table.MMGy_Freq_min;
        T.MMGy_Freq_std = features_table.MMGy_Freq_std;
        T.MMGy_Freq_std_error = features_table.MMGy_Freq_std_error;
        T.MMGy_Freq_var = features_table.MMGy_Freq_var;
        T.MMGy_Freq_peakfreq = features_table.MMGy_Freq_peakfreq;
        T.MMGy_Freq_avg_power = features_table.MMGy_Freq_avg_power;
        T.MMGy_Freq_totalpower = features_table.MMGy_Freq_totalpower;
        T.MMGy_Freq_skewness = features_table.MMGy_Freq_skewness;
        T.MMGy_Freq_kurtosis = features_table.MMGy_Freq_kurtosis;
        T.MMGy_Freq_mean_psd = features_table.MMGy_Freq_mean_psd;
        T.MMGy_Freq_median_psd = features_table.MMGy_Freq_median_psd;
        T.MMGy_Freq_std_error_psd = features_table.MMGy_Freq_std_error_psd;
        T.MMGz_Time_mean = features_table.MMGz_Time_mean;
        T.MMGz_Time_median = features_table.MMGz_Time_median;
        T.MMGz_Time_max = features_table.MMGz_Time_max;
        T.MMGz_Time_min = features_table.MMGz_Time_min;
        T.MMGz_Time_std_dev = features_table.MMGz_Time_std_dev;
        T.MMGz_Time_std_error = features_table.MMGz_Time_std_error;
        T.MMGz_Time_var = features_table.MMGz_Time_var;
        T.MMGz_Time_RMS = features_table.MMGz_Time_RMS;
        T.MMGz_Time_meanAbsVal = features_table.MMGz_Time_meanAbsVal;
        T.MMGz_Time_normalizedMean = features_table.MMGz_Time_normalizedMean;
        T.MMGz_Time_normalizedRMS = features_table.MMGz_Time_normalizedRMS;
        T.MMGz_Time_normalizedStDev = features_table.MMGz_Time_normalizedStDev;
        T.MMGz_Time_ssi = features_table.MMGz_Time_ssi;
        T.MMGz_Time_ZCR = features_table.MMGz_Time_ZCR;
        T.MMGz_Time_MCR = features_table.MMGz_Time_MCR;
        T.MMGz_Time_AOC = features_table.MMGz_Time_AOC;
        T.MMGz_Time_skewness = features_table.MMGz_Time_skewness;
        T.MMGz_Time_kurtosis = features_table.MMGz_Time_kurtosis;
        T.MMGz_Time_mean_gradient = features_table.MMGz_Time_mean_gradient;
        T.MMGz_Time_SNR = features_table.MMGz_Time_SNR;
        T.MMGz_Time_mean_xcorr = features_table.MMGz_Time_mean_xcorr;
        T.MMGz_Time_std_xcorr = features_table.MMGz_Time_std_xcorr;
        T.MMGz_Time_sum_xcorr = features_table.MMGz_Time_sum_xcorr;
        T.MMGz_Freq_mean = features_table.MMGz_Freq_mean;
        T.MMGz_Freq_median = features_table.MMGz_Freq_median;
        T.MMGz_Freq_max = features_table.MMGz_Freq_max;
        T.MMGz_Freq_min = features_table.MMGz_Freq_min;
        T.MMGz_Freq_std = features_table.MMGz_Freq_std;
        T.MMGz_Freq_std_error = features_table.MMGz_Freq_std_error;
        T.MMGz_Freq_var = features_table.MMGz_Freq_var;
        T.MMGz_Freq_peakfreq = features_table.MMGz_Freq_peakfreq;
        T.MMGz_Freq_avg_power = features_table.MMGz_Freq_avg_power;
        T.MMGz_Freq_totalpower = features_table.MMGz_Freq_totalpower;
        T.MMGz_Freq_skewness = features_table.MMGz_Freq_skewness;
        T.MMGz_Freq_kurtosis = features_table.MMGz_Freq_kurtosis;
        T.MMGz_Freq_mean_psd = features_table.MMGz_Freq_mean_psd;
        T.MMGz_Freq_median_psd = features_table.MMGz_Freq_median_psd;
        T.MMGz_Freq_std_error_psd = features_table.MMGz_Freq_std_error_psd;

        %%%%% CREATE OUTPUT EXCEL FILES %%%%%
        [path, file, extension] = fileparts(filename);
        table_path_format = fullfile(path, strcat(file, '_FEATURES.xlsx'));
        writetable(T, table_path_format);
    else
        fprintf("There are too few contractions to write to the subject file # %d.\n", trialID_preprocessed)

    end

catch ME
    disp('Error Message:')
    disp(ME.message)
    ME.identifier
    ME.cause
    disp(filename)
    for i = 1:numel(ME.stack)
        ME.stack(i)
    end
end


end