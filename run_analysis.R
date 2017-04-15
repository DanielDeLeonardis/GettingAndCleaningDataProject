#
# Script: run_analysis.R
#
# Performs the following functions:
#
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average
#    of each variable for each activity and each subject.
#
# 1. Download and unzip the data set
#
# Create the data directory if ie doesn't already exist
#
if(!file.exists("./data")) {
    dir.create("./data")
}
#
# Download the UCI HAR Dataset into the data directory
#
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/Dataset.zip")
#
# Unzip the data set into the data directory
#
unzip(zipfile = "./data/Dataset.zip", exdir = "./data")
#
# 2 Read the Data Files
#
# Define the directory paths for the training and test data sets
#
dir <- "./data/UCI HAR Dataset/"
dirTrain <- paste0(dir, "train/")
dirTest <- paste0(dir, "test/")
#
# Read the Acivity Labels i.e. The List of Activity Types
#
activityTypes <- read.table(paste0(dir, "activity_labels.txt"))
#
# Read the Feature Names
#
featureNames <- read.table(paste0(dir, "features.txt"))
#
# Read the Subject Values
#
subjectTrain <- read.table(paste0(dirTrain, "subject_train.txt"))
subjectTest <- read.table(paste0(dirTest, "subject_test.txt"))
#
# Read the Feature Values
#
featureTrain <- read.table(paste0(dirTrain, "X_train.txt"))
featureTest <- read.table(paste0(dirTest, "X_test.txt"))
#
# Read the Activity Values
#
activityTrain <- read.table(paste0(dirTrain, "y_train.txt"))
activityTest <- read.table(paste0(dirTest, "y_test.txt"))
#
# 3. Label the data sets with descriptive variable names
#
colnames(featureTrain) <- featureNames[, 2]
colnames(featureTest) <- featureNames[, 2]

colnames(activityTrain) <- "activityId"
colnames(activityTest) <- "activityId"

colnames(subjectTrain) <- "subjectId"
colnames(subjectTest) <- "subjectId"

colnames(activityTypes) <- c("activityId", "activityName")

colnames(featureNames) <- c("featureId", "featureName")
#
# 4. Merge the training and the test sets to create one data set
#
mergedTrain <- cbind(activityTrain, subjectTrain, featureTrain)
mergedTest <-  cbind(activityTest, subjectTest, featureTest)
combined <- rbind(mergedTrain, mergedTest)
#
# 5.Extract the measurements on the mean and standard deviation for each measurement
#
# Get the names of the columns from the combined table and then select the indexes
# for activity Id, Subject Id, mean and standard deviation columns
#
combinedColNames <- colnames(combined)
meanStdColIdx <- which(grepl("activityId|subjectId|mean\\(\\)|std\\(\\)", combinedColNames))
#
# Get the data for the selected columns
#
library(dplyr)
combinedMeanStd <- tbl_df(combined[, meanStdColIdx])
#
# 6. Add the descriptive activity names to name the activities in the data set
#
combinedMeanStd <- left_join(combinedMeanStd, activityTypes, by = "activityId")
#
# 7. Create a second, independent tidy data set with the average of each variable
# for each activity and each subject
#
tidyData <- aggregate(. ~subjectId + activityName, combinedMeanStd, mean)
tidyData <- tidyData[order(tidyData$subjectId, tidyData$activityId), ]
#
# 8. Write out the second, independent tidy data set to a file
#
write.table(tidyData, "./data/tidyData.txt", row.names = FALSE)