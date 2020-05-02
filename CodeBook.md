CodeBook
==================================

Data Features
=================
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Variable Names
=================
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are:
mean: Mean value
std: Standard deviation

*** Features are normalized and bounded within [-1,1].

Data Processing
=================
- The train and test sets of the original data were reconstucted by naming the features and appending columns for the subject (individual) and activity.
- The train and test sets were merged by binding the rows to create one data set,
- The columns were subsetted to extract only the measurements on the mean and standard deviation for each measurement and keep the activity and subject columns
- The activity variable was formatted as descriptive names instead of numerical coding. See below for label names.
- The resulting data were grouped by activity and subject and summarised by the mean() function.

Data Output
=================
The output of this analysis is the average of each of the above variables grouped by activity and subject.

***note: the following additional averaged vectors are not included in this summary but are part of the original data set***

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

Activity Labels
=================
1 WALKING
2 WALKING_UP
3 WALKING_DOWN
4 SITTING
5 STANDING
6 LAYING
*** the activity variable is a factor with named levels as above