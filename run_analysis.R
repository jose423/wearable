## Common variable names for test and train datasets
featurenames <- read.table("UCI HAR Dataset/features.txt")

## Setup test data set with feature names, volunteers, and activity columns
testdata <- read.table("UCI HAR Dataset/test/X_test.txt")
names(testdata) <- featurenames[[2]]
testdata$volunteer <- read.table("UCI HAR Dataset/test/subject_test.txt")
testdata$activity <- read.table("UCI HAR Dataset/test/y_test.txt")

## Setup train data set with feature names, volunteers, and activity columns
traindata <- read.table("UCI HAR Dataset/train/X_train.txt")
names(traindata) <- featurenames[[2]]
traindata$volunteer <- read.table("UCI HAR Dataset/train/subject_train.txt")
traindata$activity <- read.table("UCI HAR Dataset/train/y_train.txt")

