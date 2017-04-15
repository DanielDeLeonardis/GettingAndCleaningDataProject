# Getting and Cleaning Data Course Project Readme

## Overview

The `run_analysis.R` script takes the Human Activity Recognition Using Smartphones Dataset and performs the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

[Details of the input data set can be found here.](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Files

1. The HAR data set is downloaded and unzipped into the data directory.
2. The `CodeBook.md` describes input and output files used and the transformations applied.
3. The `run_analysis.R` processes the data as per the 5 steps defined above.
4. The output of step 5 is `tidyData.txt`