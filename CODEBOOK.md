## Getting And Cleaning Data
###Course Project Codebook
  
The data structure of the output file must be:   
<!-- -->
1.  `Subject id`. Integer. Values from 1 to 30.  
2.  `Activity name`. Character.   
    WALKING   
    WALKING_UPSTAIRS   
    WALKING_DOWNSTAIRS  
    SITTING  
    STANDING  
    LAYING     
3.  `Feature name`. Character.  
    "tBodyAcc-mean()-X"  
    "tBodyAcc-mean()-Y"  
    "tBodyAcc-mean()-Z"  
    "tBodyAcc-std()-X"  
    "tBodyAcc-std()-Y"  
    "tBodyAcc-std()-Z"  
"tGravityAcc-mean()-X"  
"tGravityAcc-mean()-Y"  
"tGravityAcc-mean()-Z"  
"tGravityAcc-std()-X"  
"tGravityAcc-std()-Y"  
"tGravityAcc-std()-Z"  
"tBodyAccJerk-mean()-X"  
"tBodyAccJerk-mean()-Y"   
"tBodyAccJerk-mean()-Z"  
"tBodyAccJerk-std()-X"  
"tBodyAccJerk-std()-Y"  
"tBodyAccJerk-std()-Z"  
"tBodyGyro-mean()-X"  
"tBodyGyro-mean()-Y"  
"tBodyGyro-mean()-Z"  
"tBodyGyro-std()-X"  
"tBodyGyro-std()-Y"  
"tBodyGyro-std()-Z"  
"tBodyGyroJerk-mean()-X"  
"tBodyGyroJerk-mean()-Y"  
"tBodyGyroJerk-mean()-Z"  
"tBodyGyroJerk-std()-X"  
"tBodyGyroJerk-std()-Y"  
"tBodyGyroJerk-std()-Z"  
"tBodyAccMag-mean()"  
"tBodyAccMag-std()"  
"tGravityAccMag-mean()"  
"tGravityAccMag-std()"  
"tBodyAccJerkMag-mean()"  
"tBodyAccJerkMag-std()"  
"tBodyGyroMag-mean()"  
"tBodyGyroMag-std()"  
"tBodyGyroJerkMag-mean()"  
"tBodyGyroJerkMag-std()"  
"fBodyAcc-mean()-X"  
"fBodyAcc-mean()-Y"  
"fBodyAcc-mean()-Z"  
"fBodyAcc-std()-X"  
"fBodyAcc-std()-Y"  
"fBodyAcc-std()-Z"  
"fBodyAcc-meanFreq()-X"  
"fBodyAcc-meanFreq()-Y"  
"fBodyAcc-meanFreq()-Z"  
"fBodyAccJerk-mean()-X"  
"fBodyAccJerk-mean()-Y"  
"fBodyAccJerk-mean()-Z"  
"fBodyAccJerk-std()-X"  
"fBodyAccJerk-std()-Y"  
"fBodyAccJerk-std()-Z"  
"fBodyAccJerk-meanFreq()-X"  
"fBodyAccJerk-meanFreq()-Y"  
"fBodyAccJerk-meanFreq()-Z"  
"fBodyGyro-mean()-X"  
"fBodyGyro-mean()-Y"  
"fBodyGyro-mean()-Z"  
"fBodyGyro-std()-X"  
"fBodyGyro-std()-Y"  
"fBodyGyro-std()-Z"  
"fBodyGyro-meanFreq()-X"  
"fBodyGyro-meanFreq()-Y"  
"fBodyGyro-meanFreq()-Z"  
"fBodyAccMag-mean()"  
"fBodyAccMag-std()"  
"fBodyAccMag-meanFreq()"  
"fBodyBodyAccJerkMag-mean()"  
"fBodyBodyAccJerkMag-std()"  
"fBodyBodyAccJerkMag-meanFreq()"  
"fBodyBodyGyroMag-mean()"  
"fBodyBodyGyroMag-std()"  
"fBodyBodyGyroMag-meanFreq()"  
"fBodyBodyGyroJerkMag-mean()"  
"fBodyBodyGyroJerkMag-std()"  
"fBodyBodyGyroJerkMag-meanFreq()"  
4.  `Average value`. Numeric.   

Resulting data frame (tidy_data) with 6 observations after an execution:
<!-- -->
    > head(tidy_data)  
    Source: local data frame [6 x 4]  
    Groups: subject, activity  

          subject activity           feature mean(value)  
        1       1   LAYING tBodyAcc-mean()-X  0.22159824  
        2       1   LAYING tBodyAcc-mean()-Y -0.04051395  
        3       1   LAYING tBodyAcc-mean()-Z -0.11320355  
        4       1   LAYING  tBodyAcc-std()-X -0.92805647  
        5       1   LAYING  tBodyAcc-std()-Y -0.83682741  
        6       1   LAYING  tBodyAcc-std()-Z -0.82606140  


