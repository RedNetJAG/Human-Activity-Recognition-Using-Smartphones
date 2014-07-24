

library(reshape2)

## Read data from files
features = read.table("./Dataset/features.txt")
activityLabels = read.table("./Dataset/activity_labels.txt")
subjectTrain = read.table("./Dataset/train/subject_train.txt")
xTrain = read.table("./Dataset/train/x_train.txt")
yTrain = read.table("./Dataset/train/y_train.txt")
subjectTest = read.table("./Dataset/test/subject_test.txt")
xTest = read.table("./Dataset/test/x_test.txt")
yTest = read.table("./Dataset/test/y_test.txt")

## Labels columns
colnames(activityLabels) <- c("activityId", "activityType")
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
