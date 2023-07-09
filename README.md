# MATLAB_feature_extraction
MATLAB module to manually feature extract biosignals (EMG, MMG) for downstream pipeline usage.

TO RUN THE MODULE:

Step 1. Load and preprocess biosignal log files

- run preprocess.m, which calls loadLogFile to read the collected data in log file format.

- filters the EMG and MMG by bandpassing and notch filtering digitally, assuming Fs=5000Hz

- returns data in array form

- outputs processed data as CSV

$ preprocess.m

Step 2. Isolate Muscle Contraction Time Points and Extract Features

- run the wrapper createFeatMatrix.m on a directory of CSV files produced during Step 1.
  sample usage:
  
$ %create the feature matrix
$ createFeatMatrix("PreprocessedData_May20", "Participant_Data_test2")

- createFeatMatrix calls isolateSingleContraction to determine muscle contraction start and end times

- createFeatMatrix then calls extractFeat_v2 to as a wrapper to drive the manual feature extraction using the feature_library functions

- lastly, createFeatMatrix calls writeParticipants to merge anthropometric data and extracted features into single Excel output per trial ID #.

  Step 3. Merge all Individual Feature Matrices into a Combined File for Machine Learning

   - call the stitchUp function to combine all individual trial Excel files of anthropometric and extracted features produced in Step 2 into one single Excel file
 
  - sample usage:
  $ stitchUp('23Jul09_Extracted_Features')

  - this combined output Excel file can be fed into the Python classical supervised learning module


NB. Additional optional helper MATLAB functions, such as plotter and freq_time_plot are also included to produce visuals of processed data.
