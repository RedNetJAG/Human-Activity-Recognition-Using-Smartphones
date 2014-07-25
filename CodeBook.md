==================================================================
Human Activity Recognition Using Smartphones Dataset Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws www.smartlab.ws

Description
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person 
performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone 
(Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear 
acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label 
the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was 
selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in 
fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has 
gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and 
gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff 
frequency was used. From each window, a vector of features was obtained by calculating variables from the time and 
frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following file is available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range 
is from 1 to 30.

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.



Variables in the Final Tidy Dataset "Average", file "TidyData.txt"
==================================================================
Id Vars:

$subjectId "integer"   - Subject Id of the participant (from 1 to 30).

$activityType "factor" - The type of the activity performed: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING,                              STANDING, LAYING.

Measure Vars:

`tBodyAcc-MEAN-X` "numeric";
`tBodyAcc-MEAN-Y` "numeric";
`tBodyAcc-MEAN-Z` "numeric";
`tBodyAcc-STD-X` "numeric";
`tBodyAcc-STD-Y` "numeric";
`tBodyAcc-STD-Z` "numeric";
`tGravityAcc-MEAN-X` "numeric";
`tGravityAcc-MEAN-Y` "numeric";
`tGravityAcc-MEAN-Z` "numeric";
`tGravityAcc-STD-X` "numeric";
`tGravityAcc-STD-Y` "numeric";
`tGravityAcc-STD-Z` "numeric";
`tBodyAccJerk-MEAN-X` "numeric";
`tBodyAccJerk-MEAN-Y` "numeric";
`tBodyAccJerk-MEAN-Z` "numeric";
`tBodyAccJerk-STD-X` "numeric";
`tBodyAccJerk-STD-Y` "numeric";
`tBodyAccJerk-STD-Z` "numeric";
`tBodyGyro-MEAN-X` "numeric";
`tBodyGyro-MEAN-Y` "numeric";
`tBodyGyro-MEAN-Z` "numeric";
`tBodyGyro-STD-X` "numeric";
`tBodyGyro-STD-Y` "numeric";
`tBodyGyro-STD-Z` "numeric";
`tBodyGyroJerk-MEAN-X` "numeric";
`tBodyGyroJerk-MEAN-Y` "numeric";
`tBodyGyroJerk-MEAN-Z` "numeric";
`tBodyGyroJerk-STD-X` "numeric";
`tBodyGyroJerk-STD-Y` "numeric";
`tBodyGyroJerk-STD-Z` "numeric";
`tBodyAccMagnitude-MEAN` "numeric";
`tBodyAccMagnitude-STD` "numeric";
`tGravityAccMagnitude-MEAN` "numeric";
`tGravityAccMagnitude-STD` "numeric";
`tBodyAccJerkMagnitude-MEAN` "numeric";
`tBodyAccJerkMagnitude-STD` "numeric";
`tBodyGyroMagnitude-MEAN` "numeric";
`tBodyGyroMagnitude-STD` "numeric";
`tBodyGyroJerkMagnitude-MEAN` "numeric";
`tBodyGyroJerkMagnitude-STD` "numeric";
`fBodyAcc-MEAN-X` "numeric";
`fBodyAcc-MEAN-Y` "numeric";
`fBodyAcc-MEAN-Z` "numeric";
`fBodyAcc-STD-X` "numeric";
`fBodyAcc-STD-Y` "numeric";
`fBodyAcc-STD-Z` "numeric";
`fBodyAccJerk-MEAN-X` "numeric";
`fBodyAccJerk-MEAN-Y` "numeric";
`fBodyAccJerk-MEAN-Z` "numeric";
`fBodyAccJerk-STD-X` "numeric";
`fBodyAccJerk-STD-Y` "numeric";
`fBodyAccJerk-STD-Z` "numeric";
`fBodyGyro-MEAN-X` "numeric";
`fBodyGyro-MEAN-Y` "numeric";
`fBodyGyro-MEAN-Z` "numeric";
`fBodyGyro-STD-X` "numeric";
`fBodyGyro-STD-Y` "numeric";
`fBodyGyro-STD-Z` "numeric";
`fBodyAccMagnitude-MEAN` "numeric";
`fBodyAccMagnitude-STD` "numeric";
`fBodyAccJerkMagnitude-MEAN` "numeric";
`fBodyAccJerkMagnitude-STD` "numeric";
`fBodyGyroMagnitude-MEAN` "numeric";
`fBodyGyroMagnitude-STD` "numeric";
`fBodyGyroJerkMagnitude-MEAN` "numeric";
`fBodyGyroJerkMagnitude-STD` "numeric".




