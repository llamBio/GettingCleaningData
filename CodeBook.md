#CodeBook.md
Code book describing the variables, the data, and work performed to clean up the Samsung Galaxy data:
[Nesta CMS](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
[Nesta CMS](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Data:
Data collected from Samsung Galaxy S phone for the Human Activity Recognition Using Smartphones Data Set from individuals performing different activities.
The features selected for this database come from the accelerometer and gyroscope.

## Variables:
*subject = individuals with id 1-30
*activity = WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING
*tBodyAcc-mean()-X = Time based mean body acceleration in the X axis
*tBodyAcc-mean()-Y = Time based body acceleration in the Y axis
*tBodyAcc-mean()-Z = Time based body accelearation in the Z axis
*tBodyAcc-std()-X = Time based Standard deviation of the time based mean body acceleration in the X axis
*tBodyAcc-std()-Y = Time based Standard deviation of the time based mean body acceleration in the Y axis
*tBodyAcc-std()-Z = Time based Standard deviation of the time based mean body acceleration in the Z axis
*tGravityAcc-mean()-X = Time based gravity mean acceleration in the X axis
*tGravityAcc-mean()-Y = Time based gravity mean acceleration in the Y axis
*tGravityAcc-mean()-Z = Time based gravity mean acceleration in the Z axis
*tGravityAcc-std()-X = Time based standard deviation of the gravity acceleration in the X axis
*tGravityAcc-std()-Y = Time based standard deviation of the gavity acceleration in the Y axis
*tGravityAcc-std()-Z = Time based standard deviation of the gavity acceleration in the Z axis
*tBodyAccJerk-mean()-X = Time based mean of the body linear acceleration and angular velocity in the X axis 
*tBodyAccJerk-mean()-Y = Time based mean of the body linear acceleration and angular velocity in the Y axis
*tBodyAccJerk-mean()-Z = Time based mean of the body linear acceleration and angular velocity in the Z axis
*tBodyAccJerk-std()-X = Time based standard deviation of the body linear acceleration and angular velocity in the X axis
*tBodyAccJerk-std()-Y = Time based standard deviation of the body linear acceleration and angular velocity in the Y axis
*tBodyAccJerk-std()-Z = Time based standard deviation of the body linear acceleration and angular velocity in the Z axis
*tBodyGyro-mean()-X = Time based mean gyroscope signal in the X direction
*tBodyGyro-mean()-Y = Time based mean gyroscope signal in the Y direction
*tBodyGyro-mean()-Z = Time based mean gyroscope signal in the Z direction
*tBodyGyro-std()-X = Time based standard deviation gyroscope signal in the X direction
*tBodyGyro-std()-Y = Time based standard deviation gyroscope signal in the Y direction
*tBodyGyro-std()-Z = Time based standard deviation gyroscope signal in the Z direction
*tBodyGyroJerk-mean()-X = Time based mean time body gyroscope jerk signal in the X direction
*tBodyGyroJerk-mean()-Y = Time based mean time body gyroscope jerk signal in the Y direction
*tBodyGyroJerk-mean()-Z = Time based mean time body gyroscope jerk signal in the Y direction
*tBodyGyroJerk-std()-X = Time based standard deviation body gyroscope jerk signal in the X direction 
*tBodyGyroJerk-std()-Y = Time based standard deviation body gyroscope jerk signal in the Y direction 
*tBodyGyroJerk-std()-Z = Time based standard deviation body gyroscope jerk signal in the Z direction 
*tBodyAccMag-mean() = Time based mean body acceleration magnitude 
*tBodyAccMag-std() = Time based standard deviation body acceleration magnitude
*tGravityAccMag-mean() = Time based mean gravity acceleration magnitude 
*tGravityAccMag-std() = Time based standard deviation gravity acceleration magnitude
*tBodyAccJerkMag-mean() = Time based mean body acceleration jerk magnitude  
*tBodyAccJerkMag-std() = Time based standard deviation body acceleration jerk magnitude
*tBodyGyroMag-mean() = Time based standard deviation body acceleration jerk magnitude
*tBodyGyroMag-std() = Time based standard deviation of the body gyroscopic signal
*tBodyGyroJerkMag-mean() = Time based mean body gyroscopic jerk magnitude
*tBodyGyroJerkMag-std() = Time based stabdard deviation body gyroscopic jerk magnitude
*fBodyAcc-mean()-X = Fast fourier transformed mean body acceleration in the X direction
*fBodyAcc-mean()-Y = Fast fourier transformed mean body acceleration in the Y direction
*fBodyAcc-mean()-Z = Fast fourier transformed mean body acceleration in the Z direction
*fBodyAcc-std()-X = standard deviation of fast fourier transformed body acceleration in the X direction
*fBodyAcc-std()-Y = standard deviation of fast fourier transformed body acceleration in the Y direction
*fBodyAcc-std()-Z = standard deviation of fast fourier transformed body acceleration in the Z direction
*fBodyAcc-meanFreq()-X = standard deviation of fast fourier transformed body acceleration in the X direction
*fBodyAcc-meanFreq()-Y = standard deviation of fast fourier transformed body acceleration in the Y direction
*fBodyAcc-meanFreq()-Z = standard deviation of fast fourier transformed body acceleration in the Z direction
*fBodyAccJerk-mean()-X = fast fourier transformed mean body acceleration jerk in the X direction
*fBodyAccJerk-mean()-Y = fast fourier transformed mean body acceleration jerk in the Y direction
*fBodyAccJerk-mean()-Z = fast fourier transformed mean body acceleration jerk in the Z direction
*fBodyAccJerk-std()-X = standard deviation of fast fourier transformed mean body acceleration jerk in the X direction
*fBodyAccJerk-std()-Y = standard deviation of fast fourier transformed mean body acceleration jerk in the Y direction
*fBodyAccJerk-std()-Z = standard deviation of fast fourier transformed mean body acceleration jerk in the Z direction
*fBodyAccJerk-meanFreq()-X = fast fourier transformed mean body acceleration jerk frequency in the X direction
*fBodyAccJerk-meanFreq()-Y = fast fourier transformed mean body acceleration jerk frequency in the Y direction
*fBodyAccJerk-meanFreq()-Z = fast fourier transformed mean body acceleration jerk frequency in the Z direction
*fBodyGyro-mean()-X = fast fourier transformed mean body gyroscope signal in the X direction
*fBodyGyro-mean()-Y = fast fourier transformed mean body gyroscope signal in the Y direction
*fBodyGyro-mean()-Z = fast fourier transformed mean body gyroscope signal in the Z direction
*fBodyGyro-std()-X = standard deviation of the fast fourier transformed gyroscope signal in the X direction
*fBodyGyro-std()-Y = standard deviation of the fast fourier transformed gyroscope signal in the Y direction
*fBodyGyro-std()-Z = standard deviation of the fast fourier transformed gyroscope signal in the Z direction
*fBodyGyro-meanFreq()-X = fast fourier transformed mean body gyroscope frequency in the X direction
*fBodyGyro-meanFreq()-Y = fast fourier transformed mean body gyroscope frequency in the Y direction
*fBodyGyro-meanFreq()-Z = fast fourier transformed mean body gyroscope frequency in the Z direction
*fBodyAccMag-mean() = fast fourier transformed mean body acceleration magnitude
*fBodyAccMag-std() = standard deviation of the fast fourier transformed body acceleration magnitude
*fBodyAccMag-meanFreq() = fast fourier transformed mean body acceleration frequency
*fBodyBodyAccJerkMag-mean() = fast fourier transformed mean body acceleration frequency
*fBodyBodyAccJerkMag-std() = standard deviation of fast fourier transformed body acceleration magnitude
*fBodyBodyAccJerkMag-meanFreq() = fast fourier transformed body acceleration jerk magnitude mean frequency
*fBodyBodyGyroMag-mean() = fast fourier transformed mean body gyroscope magnitude
*fBodyBodyGyroMag-std() = standard deviation of fast fourier transformed mean body gyroscope magnitude
*fBodyBodyGyroMag-meanFreq() = fast fourier transformed body gyroscope magnitude mean frequency
*fBodyBodyGyroJerkMag-mean() = fast fourier transformed body gyroscope jerk magnitude mean
*fBodyBodyGyroJerkMag-std() = standard deviation of fast fourier transformed body gyroscope jerk magnitude mean
*fBodyBodyGyroJerkMag-meanFreq() = fast fourier transformed body gyroscope jerk magnitude mean frequency