# Getting and Cleaning Data Course Project Code Book

The following provides a description of the input and output files used and the transformations applied.

## Input Data sets

[The input data can be downloaded here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The following is a description of the files used from the zip.

Note: the field names were added as part of the tranformations applied.  See the tranformation section below.

### Acivity Labels Data Set

activity_labels.txt - Links the class labels with their activity name.

| Field Name   | Type   | Example           |
| ------------ | ------ | ----------------- |
| activityId   | int    | 2                 |
| activityName | Factor | WALKING_UPSTAIRS  |

Activity Label values:

| Name               | Value | Description                                          |
| ------------------ | ----- | ---------------------------------------------------- |
| WALKING            | 1     | subject was walking during the test                  |
| WALKING_UPSTAIRS   | 2     | subject was walking up a staircase during the test   |
| WALKING_DOWNSTAIRS | 3     | subject was walking down a staircase during the test |
| SITTING            | 4     | subject was sitting during the test                  |
| STANDING           | 5     | subject was standing during the test                 |
| LAYING             | 6     | subject was laying down during the test              |
 
### Feature Names Data Set

features.txt - List of all the features.

| Field Name   | Type   | Example           |
| ------------ | ------ | ------------------|
| featureId    | int    | 1                 |
| featureName  | Factor | tBodyAcc-mean()-X |

### Subject Values Data Sets

subject_train.txt, subject_test.txt - Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
 
| Field Name   | Type   | Example           |
| ------------ | ------ | ------------------|
| subjectId    | int    | 1                 |
 
### Activity Values Data Sets

y_train.txt, y_test.txt - The Training and Test labels.
 
| Field Name   | Type   | Example           |
| ------------ | ------ | ------------------|
| activityId   | int    | 5                 |
 
### Feature Values Data Sets

X_train.txt, X_test.txt - The Training and Test sets.

These data sets contain 561 numeric variables such as:
* tBodyAcc-mean()-X e.g. 0.289
* tBodyAcc-mean()-Y e.g. -0.0203
* tBodyAcc-mean()-Z e.g. -0.133
* tBodyAcc-std()-X  e.g. -0.995
* etc
  
## Output Data Set

tidyData.txt - tidy data set with the average of each variable for each activity and each subject.

| Field Name                 | Type   | Example  |
| -------------------------- | ------ | -------- |
| subjectId                  | int    | 1        |
| activityName               | Factor | LAYING   |
| activityId                 | num    | 1        |
| tBodyAcc-mean()-X          | num    | 0.277    |
| tBodyAcc-mean()-Y          | num    | -0.01738 |
| tBodyAcc-mean()-Z          | num    | -0.1111  |
| tBodyAcc-std()-X           | num    | -0.284   |
| tBodyAcc-std()-Y           | num    | 0.11446  |
| tBodyAcc-std()-Z           | num    | -0.26    |
| tGravityAcc-mean()-X       | num    | 0.935    |
| tGravityAcc-mean()-Y       | num    | -0.282   |
| tGravityAcc-mean()-Z       | num    | -0.0681  |
| tGravityAcc-std()-X        | num    | -0.977   |
| tGravityAcc-std()-Y        | num    | -0.971   |
| tGravityAcc-std()-Z        | num    | -0.948   |
| tBodyAccJerk-mean()-X      | num    | 0.074    |
| tBodyAccJerk-mean()-Y      | num    | 0.028272 |
| tBodyAccJerk-mean()-Z      | num    | -0.00417 |
| tBodyAccJerk-std()-X       | num    | -0.1136  |
| tBodyAccJerk-std()-Y       | num    | 0.067    |
| tBodyAccJerk-std()-Z       | num    | -0.503   |
| tBodyGyro-mean()-X         | num    | -0.0418  |
| tBodyGyro-mean()-Y         | num    | -0.0695  |
| tBodyGyro-mean()-Z         | num    | 0.0849   |
| tBodyGyro-std()-X          | num    | -0.474   |
| tBodyGyro-std()-Y          | num    | -0.05461 |
| tBodyGyro-std()-Z          | num    | -0.344   |
| tBodyGyroJerk-mean()-X     | num    | -0.09    |
| tBodyGyroJerk-mean()-Y     | num    | -0.0398  |
| tBodyGyroJerk-mean()-Z     | num    | -0.0461  |
| tBodyGyroJerk-std()-X      | num    | -0.207   |
| tBodyGyroJerk-std()-Y      | num    | -0.304   |
| tBodyGyroJerk-std()-Z      | num    | -0.404   |
| tBodyAccMag-mean()         | num    | -0.137   |
| tBodyAccMag-std()          | num    | -0.2197  |
| tGravityAccMag-mean()      | num    | -0.137   |
| tGravityAccMag-std()       | num    | -0.2197  |
| tBodyAccJerkMag-mean()     | num    | -0.1414  |
| tBodyAccJerkMag-std()      | num    | -0.0745  |
| tBodyGyroMag-mean()        | num    | -0.161   |
| tBodyGyroMag-std()         | num    | -0.187   |
| tBodyGyroJerkMag-mean()    | num    | -0.299   |
| tBodyGyroJerkMag-std()     | num    | -0.325   |
| fBodyAcc-mean()-X          | num    | -0.2028  |
| fBodyAcc-mean()-Y          | num    | 0.08971  |
| fBodyAcc-mean()-Z          | num    | -0.332   |
| fBodyAcc-std()-X           | num    | -0.3191  |
| fBodyAcc-std()-Y           | num    | 0.056    |
| fBodyAcc-std()-Z           | num    | -0.28    |
| fBodyAccJerk-mean()-X      | num    | -0.1705  |
| fBodyAccJerk-mean()-Y      | num    | -0.0352  |
| fBodyAccJerk-mean()-Z      | num    | -0.469   |
| fBodyAccJerk-std()-X       | num    | -0.1336  |
| fBodyAccJerk-std()-Y       | num    | 0.107    |
| fBodyAccJerk-std()-Z       | num    | -0.535   |
| fBodyGyro-mean()-X         | num    | -0.339   |
| fBodyGyro-mean()-Y         | num    | -0.1031  |
| fBodyGyro-mean()-Z         | num    | -0.2559  |
| fBodyGyro-std()-X          | num    | -0.517   |
| fBodyGyro-std()-Y          | num    | -0.0335  |
| fBodyGyro-std()-Z          | num    | -0.437   |
| fBodyAccMag-mean()         | num    | -0.1286  |
| fBodyAccMag-std()          | num    | -0.398   |
| fBodyBodyAccJerkMag-mean() | num    | -0.0571  |
| fBodyBodyAccJerkMag-std()  | num    | -0.103   |
| fBodyBodyGyroMag-mean()    | num    | -0.199   |
| fBodyBodyGyroMag-std()     | num    | -0.321   |
| fBodyBodyGyroJerkMag-mean()| num    | -0.319   |
| fBodyBodyGyroJerkMag-std() | num    | -0.382   |

## Transformations

1. Each of the input data sets were labeled with descriptive variables:
    * the feature names were added to the feature values data sets
    * activityId was added to the activity values data sets
    * subjectId was added to the subject values data sets
    * activityId and activityName was added to the activity labels data set
    * featureId and featureName was added to the feature names data set

2. The activity values, subject values and the feature values columns were merged for the training and test data sets respectively and then the rows merged together to create a single combined data set.

3. The activityId, subjectId and mean and standard deviation measurements were extracted from the combined data set and the descriptive names for the activities added i.e. activityName.

4. The tidy data set is a summary of the combined data set of means and standard deviations. The average was taken for each variable for each subject and activity and then orderd by the subject and activity. 