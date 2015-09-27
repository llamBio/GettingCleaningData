#Getting and Cleaning Data Repository:

## Files:
* README.md
* CodeBook.md
* run_analysis.R

### README.md
Document explaining how the Getting and Cleaning Data Repository scripts work:

### CodeBook.md
Document describing the bariables, the data, and work to clean data collected from the Samsung Galaxy S smartphone:
(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### run_analysis.R
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#### Usage run_analysis.R
1. Set working directory to the "UCI HAR Dataset" folder that contains the files activity_labels.txt, features.txt, the test folder, and the train folder
>setwd(<PATH TO UCI HAR Dataset>)  
2. Load the functions from the script
> source('run_analysis.R')
3. Call the function to merge and tidy the smartphone data.
> merge_and_write_tidy_data()
4. The tidy.data.txt file will be generated in the working directory to include the tidy data.