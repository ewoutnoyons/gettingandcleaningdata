## set working directory
setwd("~/Documents/Getting and Cleaning Data/Data/UCI HAR Dataset")

## read data from UCI HAR Dataset
activityLabels <- read.table("activity_labels.txt")
features <- read.table("features.txt")
subjectTest <- read.table("./test/subject_test.txt")
xTest <- read.table("./test/X_test.txt")
yTest <- read.table("./test/y_test.txt")
subjectTrain <- read.table("./train/subject_train.txt")
xTrain <- read.table("./train/X_train.txt")
yTrain <- read.table("./train/y_train.txt")

## assign column names
colnames(activityLabels) <- c("activityId", "activityDescription")
colnames(subjectTest) <- "subjectId"
colnames(xTest) <- features[ , 2]
colnames(yTest) <- "activityId"
colnames(subjectTrain) <- "subjectId"
colnames(xTrain) <- features[ , 2]
colnames(yTrain) <- "activityId"

## select only mean and standard deviation measures from xTest dataset
colNamesxTest <- colnames(xTest)
activityMeasures <- grepl("-mean[(]", colNamesxTest) | grepl("-std[(]", colNamesxTest)
xTest <- xTest[activityMeasures]

## select only mean and standard deviation values from xTrain dataset
colNamesxTrain <- colnames(xTrain)
activityMeasures <- grepl("-mean[(]", colNamesxTrain) | grepl("-std[(]", colNamesxTrain)
xTrain <- xTrain[activityMeasures]

## create test dataset by combining dataframes
testData <- cbind(yTest, subjectTest, xTest)

## create train dataset by combining dataframes
trainData <- cbind(yTrain, subjectTrain, xTrain)

## combine train and test data by binding rows
data <- rbind(trainData, testData)

## add activity labels to activity ids
data <- merge(activityLabels, data, by.x = "activityId", by.y = "activityId")

## remove activity id from dataset
data <- data[, -1]

## relabel variable names
colNames <- colnames(data)
colNames <- gsub("-mean", "Mean", colNames)
colNames <- gsub("-std", "Std", colNames)
colNames <- gsub("[()-]", "", colNames)
colnames(data) <- colNames

## create tidy dataset with for each activity and subject the average values
## for each measurement
tidyData <- aggregate(. ~ subjectId + activityDescription, data, mean)

## create text file of tidy dataset
write.table(tidyData, file = "./tidydata.txt", row.names = FALSE)