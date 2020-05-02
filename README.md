Summarised and Subsetted Dataset of the 'Human Activity Recognition Using Smartphones Dataset'
==================================================================
Martin J Page
==================================================================
This repo contains the script to (1) merge the training and test data sets of the original Human Activity Recognition Using Smartphones Dataset and (2) subset the variables to include only the mean and standard deviation for each measurement. Finally, these measurements are summarised by taking the average of each variable group by activity and subject. The six activities are renamed to (WALKING, WALKING_UP, WALKING_DOWN, SITTING, STANDING, LAYING). The variables are described in 'CodeBook.md'.

For each record it is provided:
======================================
- the activity label of the 6 activity categories.
- the identifier of the subject (1-30) who carried out the experiment.
- 66-feature vector with time and frequency domain variables (see 'Codebook.md') 

The dataset includes the following files:
=========================================
- 'README.md'
- 'run_analysis.R'
- 'CodeBook.md'

Information about the Original Dataset:
=========================================
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitonal force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

Notes: 
======
- Features are normalized and bounded within [-1,1].

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
