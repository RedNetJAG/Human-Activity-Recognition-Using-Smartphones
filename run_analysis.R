

library(reshape2)

# Read data from files
features = read.table('./Dataset/features.txt')
activityLabels = read.table('./Dataset/activity_labels.txt')
subjectTrain = read.table('./Dataset/train/subject_train.txt')
xTrain = read.table('./Dataset/train/x_train.txt')
yTrain = read.table('./Dataset/train/y_train.txt')
subjectTest = read.table('./Dataset/test/subject_test.txt')
xTest = read.table('./Dataset/test/x_test.txt')
yTest = read.table('./Dataset/test/y_test.txt')
