function output = stitchUp(data_folder)
%stitch_up Summary of this function goes here
%   Concatenate all individual excel files into a single feature vector
%   excel spreadsheet

%now let's concatenate all of our files back together
date = string(datetime("today"));
original_files=dir([data_folder '/*']);
error_files = [];
T = table; % create an empty table
for k=4:length(original_files)
    filename=[data_folder '/' original_files(k).name];
    try
        temp_table = readtable(filename);
        T = [T; temp_table];
    catch ME
        disp('Error Message:')
        disp(ME.message)
        error_files = [error_files; filename, ME.message];
    end
error_path = fullfile(data_folder, strcat(date, '_ERROR_FILE.xlsx'));
writematrix(error_files, error_path);
%output the resulting single excel spreadsheet
table_path_format = fullfile(data_folder, strcat(date, '_COMBINED.xlsx'));
writetable(T, table_path_format);

end

end