function [T, t, EMG] = loadLogFile(localPath, Fs)
%loadLogFile Loads a log file
%  reads the content using readtable
% plots all channels using stackedplot()
%[file,path] = uigetfile(filepath);
    arguments
        localPath = '_baseline'
        Fs = 5000
    end
%rootPath = '/Users/meg/Documents/MATLAB/Elaya/MMG/2022-02-01/20220124M01'
%fullPath = strcat(rootPath, localPath)
%T = readtable(fullPath);
T = readtable(localPath);
Fnyq = Fs/2;
Ts = 1/Fs;
L = size(T(:,1));
t = (0:L-1)*Ts;
%figure
%stackedplot(T, {'Var1', 'Var2', 'Var3'})
%stackedplot(T)
%title(localPath);
end