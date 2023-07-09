function output = createFeatMatrix(data_folder, data_folder_subject)
%CREATE FEATURE MATRIX This function generates a matrix containing
%   all feature information including subject ID, anthropometric data
%   collected during experiment, time domain features and frequency
%   domain features
% data_folder is folder containing individual preprocessed excel files
% data_folder_subject is folder containing participant anthropometric data

original_files=dir([data_folder '/*']);
date = string(datetime("today"));

%loop through the preprocessed files
for k=4:length(original_files)
    filename=[data_folder '/' original_files(k).name];
    [path, file, extension] = fileparts(filename);
    try
        %t_signal = readtable(filename);
        %write_img_path = fullfile( strcat(path, '/', images), file);
        %t_contract = isolateContractions(t_signal, write_img_path);
        %write_img_path = "";
        %[t_contract, output_table] = findSingleContraction(filename, write_img_path);
        [features_array, features_table] = extractFeat_v2(filename);
        
        %optionally, output excel files of contractions
        %myName = strcat('Contractions','_', date);
        %mkdir(myName);
        %table_path_format = fullfile(myName, strcat(file, '_CONTRACTIONS.xlsx'));
        %writetable(output_table, table_path_format);
        
        %write the features to the participant files
        
        trialID_preprocessed = sscanf(file, '%d');
        %find the participant file for this preprocessed file
        %data_folder_subject = 'Participant_Data_test2';
        original_files_subject=dir([data_folder_subject '/*']);
        for j=4:length(original_files_subject)
            filename_subject=[data_folder_subject '/' original_files_subject(j).name];
            [path_subject, file_subject, extension_subject] = fileparts(filename_subject);
            trialID_subject = sscanf(file_subject, '%d');
            if trialID_preprocessed == trialID_subject
                writeParticipants_v2(filename_subject, features_table, trialID_preprocessed);
            else
                continue
            end %end of if statement searching for trialID match
        end %end looping through participant files
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

end