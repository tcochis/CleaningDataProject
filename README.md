---
title: "HAR Summary ReadME"
author: "Tim Cochis"
date: "Saturday, March 21, 2015"
---

## Processing Descrption

The script named run_analysis.R can be used to create the summarized data file from the raw data 
located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip . 
This script will:


-  read the data files 
- combine the test and training data sets in to one data set
- include only the observation variables containing mean and std deviation values
- add descriptive column names to the data set
- add descriptive activity names to the data set
- group the data by subject and activity
- calculate the mean values for each of the measurement variables

## CodeBook  - Summarized Human Activity Recognition Data

Note: Please refer to the README.txt file located in the raw data folder for a detailed 
      description of observation variables listed below.


| Column                  | Data Type | Range | Description                                        |
|-------------------------|-----------|-------|----------------------------------------------------|
| subject_id  | Int       | [1..30] | unique identifier for the test subject |
| activity    | String      |   | WALKING<br />WALKING_UPSTAIRS<br />WALKING_DOWNSTAIRS<br />SITTING<br />STANDING<br />LAYING          |
| activity_id | Int       | [1..6]  | identifier for the activity            |
|tBodyAcc-mean()-X -mean                 |Numeric|[-1..1]|mean of tBodyAcc-mean()-X value grouped by activity and subject|
|tBodyAcc-mean()-Y -mean                 |Numeric|[-1..1]|mean of tBodyAcc-mean() -Y value grouped by activity and subject
|tBodyAcc-mean()-Z -mean                 |Numeric|[-1..1]|mean of tBodyAcc-mean() -Z value grouped by activity and subject       
|tBodyAcc-std()-X -mean                  |Numeric|[-1..1]|mean of tBodyAcc-std()-X value grouped by activity and subject   
|tBodyAcc-mean()-X -mean                 |Numeric|[-1..1]|mean of tBodyAcc-mean()-X value grouped by activity and subject
|tBodyAcc-mean()-Y -mean                 |Numeric|[-1..1]|mean of tBodyAcc-mean()-Y value grouped by activity and subject
|tBodyAcc-mean()-Z -mean                 |Numeric|[-1..1]|mean of tBodyAcc-mean()-Z value grouped by activity and subject
|tBodyAcc-std()-X -mean                  |Numeric|[-1..1]|mean of tBodyAcc-std()-X value grouped by activity and subject
|tBodyAcc-std()-Y -mean                  |Numeric|[-1..1]|mean of tBodyAcc-std()-Y value grouped by activity and subject
|tBodyAcc-std()-Z -mean                  |Numeric|[-1..1]|mean of tBodyAcc-std()-Z value grouped by activity and subject
|tGravityAcc-mean()-X -mean              |Numeric|[-1..1]|mean of tGravityAcc-mean()-X value grouped by activity and subject
|tGravityAcc-mean()-Y -mean              |Numeric|[-1..1]|mean of tGravityAcc-mean()-Y value grouped by activity and subject
|tGravityAcc-mean()-Z -mean              |Numeric|[-1..1]|mean of tGravityAcc-mean()-Z value grouped by activity and subject
|tGravityAcc-std()-X -mean               |Numeric|[-1..1]|mean of tGravityAcc-std()-X value grouped by activity and subject
|tGravityAcc-std()-Y -mean               |Numeric|[-1..1]|mean of tGravityAcc-std()-Y value grouped by activity and subject
|tGravityAcc-std()-Z -mean               |Numeric|[-1..1]|mean of tGravityAcc-std()-Z value grouped by activity and subject
|tBodyAccJerk-mean()-X -mean             |Numeric|[-1..1]|mean of tBodyAccJerk-mean()-X value grouped by activity and subject
|tBodyAccJerk-mean()-Y -mean             |Numeric|[-1..1]|mean of tBodyAccJerk-mean()-Y value grouped by activity and subject
|tBodyAccJerk-mean()-Z -mean             |Numeric|[-1..1]|mean of tBodyAccJerk-mean()-Z value grouped by activity and subject
|tBodyAccJerk-std()-X -mean              |Numeric|[-1..1]|mean of tBodyAccJerk-std()-X value grouped by activity and subject
|tBodyAccJerk-std()-Y -mean              |Numeric|[-1..1]|mean of tBodyAccJerk-std()-Y value grouped by activity and subject
|tBodyAccJerk-std()-Z -mean              |Numeric|[-1..1]|mean of tBodyAccJerk-std()-Z value grouped by activity and subject
|tBodyGyro-mean()-X -mean                |Numeric|[-1..1]|mean of tBodyGyro-mean()-X value grouped by activity and subject
|tBodyGyro-mean()-Y -mean                |Numeric|[-1..1]|mean of tBodyGyro-mean()-Y value grouped by activity and subject
|tBodyGyro-mean()-Z -mean                |Numeric|[-1..1]|mean of tBodyGyro-mean()-Z value grouped by activity and subject
|tBodyGyro-std()-X -mean                 |Numeric|[-1..1]|mean of tBodyGyro-std()-X value grouped by activity and subject
|tBodyGyro-std()-Y -mean                 |Numeric|[-1..1]|mean of tBodyGyro-std()-Y value grouped by activity and subject
|tBodyGyro-std()-Z -mean                 |Numeric|[-1..1]|mean of tBodyGyro-std()-Z value grouped by activity and subject
|tBodyGyroJerk-mean()-X -mean            |Numeric|[-1..1]|mean of tBodyGyroJerk-mean()-X value grouped by activity and subject
|tBodyGyroJerk-mean()-Y -mean            |Numeric|[-1..1]|mean of tBodyGyroJerk-mean()-Y value grouped by activity and subject
|tBodyGyroJerk-mean()-Z -mean            |Numeric|[-1..1]|mean of tBodyGyroJerk-mean()-Z value grouped by activity and subject
|tBodyGyroJerk-std()-X -mean             |Numeric|[-1..1]|mean of tBodyGyroJerk-std()-X value grouped by activity and subject
|tBodyGyroJerk-std()-Y -mean             |Numeric|[-1..1]|mean of tBodyGyroJerk-std()-Y value grouped by activity and subject
|tBodyGyroJerk-std()-Z -mean             |Numeric|[-1..1]|mean of tBodyGyroJerk-std()-Z value grouped by activity and subject
|tBodyAccMag-mean() -mean                |Numeric|[-1..1]|mean of tBodyAccMag-mean() value grouped by activity and subject
|tBodyAccMag-std() -mean                 |Numeric|[-1..1]|mean of tBodyAccMag-std() value grouped by activity and subject
|tGravityAccMag-mean() -mean             |Numeric|[-1..1]|mean of tGravityAccMag-mean() value grouped by activity and subject
|tGravityAccMag-std() -mean              |Numeric|[-1..1]|mean of tGravityAccMag-std() value grouped by activity and subject
|tBodyAccJerkMag-mean() -mean            |Numeric|[-1..1]|mean of tBodyAccJerkMag-mean() value grouped by activity and subject
|tBodyAccJerkMag-std() -mean             |Numeric|[-1..1]|mean of tBodyAccJerkMag-std() value grouped by activity and subject
|tBodyGyroMag-mean() -mean               |Numeric|[-1..1]|mean of tBodyGyroMag-mean() value grouped by activity and subject
|tBodyGyroMag-std() -mean                |Numeric|[-1..1]|mean of tBodyGyroMag-std() value grouped by activity and subject
|tBodyGyroJerkMag-mean() -mean           |Numeric|[-1..1]|mean of tBodyGyroJerkMag-mean() value grouped by activity and subject
|tBodyGyroJerkMag-std() -mean            |Numeric|[-1..1]|mean of tBodyGyroJerkMag-std() value grouped by activity and subject
|fBodyAcc-mean()-X -mean                 |Numeric|[-1..1]|mean of fBodyAcc-mean()-X value grouped by activity and subject
|fBodyAcc-mean()-Y -mean                 |Numeric|[-1..1]|mean of fBodyAcc-mean()-Y value grouped by activity and subject
|fBodyAcc-mean()-Z -mean                 |Numeric|[-1..1]|mean of fBodyAcc-mean()-Z value grouped by activity and subject
|fBodyAcc-std()-X -mean                  |Numeric|[-1..1]|mean of fBodyAcc-std()-X value grouped by activity and subject
|fBodyAcc-std()-Y -mean                  |Numeric|[-1..1]|mean of fBodyAcc-std()-Y value grouped by activity and subject
|fBodyAcc-std()-Z -mean                  |Numeric|[-1..1]|mean of fBodyAcc-std()-Z value grouped by activity and subject
|fBodyAcc-meanFreq()-X -mean             |Numeric|[-1..1]|mean of fBodyAcc-meanFreq()-X value grouped by activity and subject
|fBodyAcc-meanFreq()-Y -mean             |Numeric|[-1..1]|mean of fBodyAcc-meanFreq()-Y value grouped by activity and subject 
|fBodyAcc-meanFreq()-Z -mean             |Numeric|[-1..1]|mean of fBodyAcc-meanFreq()-Z value grouped by activity and subject
|fBodyAccJerk-mean()-X -mean             |Numeric|[-1..1]|mean of fBodyAccJerk-mean()-X value grouped by activity and subject
|fBodyAccJerk-mean()-Y -mean             |Numeric|[-1..1]|mean of fBodyAccJerk-mean()-Y value grouped by activity and subject
|fBodyAccJerk-mean()-Z -mean             |Numeric|[-1..1]|mean of fBodyAccJerk-mean()-Z value grouped by activity and subject
|fBodyAccJerk-std()-X -mean              |Numeric|[-1..1]|mean of fBodyAccJerk-std()-X value grouped by activity and subject
|fBodyAccJerk-std()-Y -mean              |Numeric|[-1..1]|mean of fBodyAccJerk-std()-Y value grouped by activity and subject
|fBodyAccJerk-std()-Z -mean              |Numeric|[-1..1]|mean of fBodyAccJerk-std()-Z value grouped by activity and subject
|fBodyAccJerk-meanFreq()-X -mean         |Numeric|[-1..1]|mean of fBodyAccJerk-meanFreq()-X value grouped by activity and subject
|fBodyAccJerk-meanFreq()-Y -mean         |Numeric|[-1..1]|mean of fBodyAccJerk-meanFreq()-Y value grouped by activity and subject
|fBodyAccJerk-meanFreq()-Z -mean         |Numeric|[-1..1]|mean of fBodyAccJerk-meanFreq()-Z value grouped by activity and subject
|fBodyGyro-mean()-X -mean                |Numeric|[-1..1]|mean of fBodyGyro-mean()-X value grouped by activity and subject
|fBodyGyro-mean()-Y -mean                |Numeric|[-1..1]|mean of fBodyGyro-mean()-Y value grouped by activity and subject
|fBodyGyro-mean()-Z -mean                |Numeric|[-1..1]|mean of fBodyGyro-mean()-Z value grouped by activity and subject
|fBodyGyro-std()-X -mean                 |Numeric|[-1..1]|mean of fBodyGyro-std()-X  value grouped by activity and subject            
|fBodyGyro-std()-Y -mean                 |Numeric|[-1..1]|mean of fBodyGyro-std()-Y value grouped by activity and subject
|fBodyGyro-std()-Z -mean                 |Numeric|[-1..1]|mean of fBodyGyro-std()-Z value grouped by activity and subject
|fBodyGyro-meanFreq()-X -mean            |Numeric|[-1..1]|mean of fBodyGyro-meanFreq()-X value grouped by activity and subject
|fBodyGyro-meanFreq()-Y -mean            |Numeric|[-1..1]|mean of fBodyGyro-meanFreq()-Y value grouped by activity and subject
|fBodyGyro-meanFreq()-Z -mean            |Numeric|[-1..1]|mean of fBodyGyro-meanFreq()-Z value grouped by activity and subject
|fBodyAccMag-mean() -mean                |Numeric|[-1..1]|mean of fBodyAccMag-mean() value grouped by activity and subject
|fBodyAccMag-std() -mean                 |Numeric|[-1..1]|mean of fBodyAccMag-std() value grouped by activity and subject
|fBodyAccMag-meanFreq() -mean            |Numeric|[-1..1]|mean of fBodyAccMag-meanFreq() value grouped by activity and subject
|fBodyBodyAccJerkMag-mean() -mean        |Numeric|[-1..1]|mean of fBodyBodyAccJerkMag-mean() value grouped by activity and subject
|fBodyBodyAccJerkMag-std() -mean         |Numeric|[-1..1]|mean of fBodyBodyAccJerkMag-std() value grouped by activity and subject     
|fBodyBodyAccJerkMag-meanFreq() -mean    |Numeric|[-1..1]|mean of fBodyBodyAccJerkMag-meanFreq() value grouped by activity and subject
|fBodyBodyGyroMag-mean() -mean           |Numeric|[-1..1]|mean of fBodyBodyGyroMag-mean() value grouped by activity and subject
|fBodyBodyGyroMag-std() -mean            |Numeric|[-1..1]|mean of fBodyBodyGyroMag-std() value grouped by activity and subject
|fBodyBodyGyroMag-meanFreq() -mean       |Numeric|[-1..1]|mean of fBodyBodyGyroMag-meanFreq() value grouped by activity and subject   
|fBodyBodyGyroJerkMag-mean() -mean       |Numeric|[-1..1]|mean of fBodyBodyGyroJerkMag-mean() value grouped by activity and subject
|fBodyBodyGyroJerkMag-std() -mean        |Numeric|[-1..1]|mean of fBodyBodyGyroJerkMag-std() value grouped by activity and subject 

