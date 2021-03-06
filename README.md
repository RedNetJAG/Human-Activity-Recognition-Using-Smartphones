Human Activity Recognition Using Smartphones Data Set
=====================================================
Source:
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. 
Smartlab - Non Linear Complex Systems Laboratory 
DITEN - UniversitÃ  degli Studi di Genova, Genoa I-16145, Italy. 
activityrecognition '@' smartlab.ws 
www.smartlab.ws 

Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

The dataset was downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Check the README.txt file for further details about this dataset.

Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Relevant Papers:

N/A

Citation Request:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

run_analysis.R Process By JAGomez
==============================================

The run_analysis.R Process starts reading the raw data from the different files: features.txt (List of all features), activity_labels.txt (Links the class labels with their activity name), /train/subject_train.txt (Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30), /train/x_train.txt (Training set), /train/y_train.txt (Training labels), /test/subject_test.txt (same as /train/subject_train.txt), /test/x_test.txt (Test set), /test/y_test.txt (Test labels).

Once it has read the raw data, labels the column that needed with friendly names, merges de trainig dataset and the test dataset by columns, and merges both data sets by rows to make one data set, "TrainingTest".

For the second point: 'Extracts only the measurements on the mean and standard deviation for each measurement', run_analysis.R extracts the column names to parse them, looking for the characters: "-mean(", "-std", "subjectId" and "activityId". Once we had the correspondant colnames, it extracts to "MeanStd" the data frame needded.

3.Uses descriptive activity names to name the activities in the data set: In this point, it only has to merge the dataset, MeanStd, with the data set from the file 'activity_labels.txt', obtaining 'MeanStdFinal'.

4.Appropriately labels the data set with descriptive variable names: it extracts the colnames from 'MeanStdFinal' to a character vector, removes '()' and replaces characters to make them friendly, re-labeling the colnames of the data set.

Finally, to create a second, independent tidy data set with the average of each variable for each activity and each subject, 'run_analysis.R' remove 'activityId' beacause is redundant (MeanStdFinal has the column 'activityType'), melts MeanStdFinal, telling it that the id var are "activityType" and "subjectId", to compute the average for each of them. Then it casts the molten data frame 'AverageData' into the data frame 'Average', the result for the point 5.
Once it obtain the the average of each variable for each activity and each subject, run_analysis.R wirtes the result 'Average' into a txt file, "TidyData.txt".



