##################################################################################
## Getting and Cleaning Data
## by Jeff Leek, PhD, Brian Caffo, PhD, Roger D. Peng, PhD
## 
## run_analysis.R by JAGomez
## 24/07/2014
##
## run_analysis.R does the following:
## 1.Merges the training and the test sets to create one data set.
## 2.Extracts only the measurements on the mean and standard deviation 
##   for each measurement. 
## 3.Uses descriptive activity names to name the activities in the data set.
## 4.Appropriately labels the data set with descriptive variable names. 
## 5.Creates a second, independent tidy data set with the average of each variable
##   for each activity and each subject.
##
##################################################################################

library(reshape2)
library(plyr)

## Read data from files
features = read.table("./Dataset/features.txt")
activityType = read.table("./Dataset/activity_labels.txt")
subjectTrain = read.table("./Dataset/train/subject_train.txt")
xTrain = read.table("./Dataset/train/x_train.txt")
yTrain = read.table("./Dataset/train/y_train.txt")
subjectTest = read.table("./Dataset/test/subject_test.txt")
xTest = read.table("./Dataset/test/x_test.txt")
yTest = read.table("./Dataset/test/y_test.txt")

## Labels the columns
colnames(activityType) <- c("activityId", "activityType")
colnames(subjectTrain) <- "subjectId"
colnames(subjectTest) <- "subjectId"
colnames(yTrain) <- "activityId"
colnames(yTest) <- "activityId"
colnames(xTrain) <- features$V2
colnames(xTest) <- features$V2

## Merges de trainig dataset and the test dataset
Training <- cbind(subjectTrain, xTrain, yTrain)
Test <- cbind(subjectTest, xTest, yTest)
## Result for 1.Merges the training and the test sets to create one dataset
TrainingTest <- rbind(Training, Test)

## 2.Extracts only the measurements on the mean and standard deviation
## for each measurement
## extract the colnames to parse them
columnas <- colnames(TrainingTest)
colextract <- grepl("-mean\\(", columnas) | grepl("-std", columnas) | grepl("subjectId", columnas) | grepl("activityId", columnas)
## Result for 2: MeanStd
MeanStd <- TrainingTest[colextract]

## 3.Uses descriptive activity names to name the activities in the data set: MeanSdFinal
MeanStdFinal <- merge(MeanStd,activityType,by='activityId',all.x=TRUE)

## 4.Appropriately labels the data set with descriptive variable names
nombres <- names(MeanStdFinal)
nombres <- gsub("\\()","", nombres) ##removes '()'
nombres <- gsub("BodyBody","Body",nombres)
nombres <- gsub("mean","MEAN",nombres)
nombres <- gsub("std","STD",nombres)
nombres <- gsub("bands","Bands",nombres)
nombres <- gsub("angle","Angle",nombres)
nombres <- gsub("min","MIN",nombres)
nombres <- gsub("max","MAX",nombres)
nombres <- gsub("mad","MAD",nombres)
nombres <- gsub("gravity","Gravity",nombres)
nombres <- gsub("[Mm]ag","Magnitude",nombres)
colnames(MeanStdFinal) <- nombres

## 5.Create a second, independent tidy data set with the average of each variable
## for each activity and each subject
MeanStdFinal$activityId <- NULL
AverageData <- melt(MeanStdFinal, id=c("activityType", "subjectId"))
Average <- dcast(AverageData, activityType + subjectId ~ variable, mean)

## save the TinyData file
write.table(Average, "./TidyData.txt", row.names = FALSE, quote = FALSE)
