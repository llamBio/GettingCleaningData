#==============================================================================
## run_analysis.R
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for 
#    each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data 
#    set with the average of each variable for each activity and each subject.
#==============================================================================

#==============================================================================
# Dataset information
# 30 individuals
# SIX ACTIVITIES
# 1. WALKING
# 2. WALKING_UPSTAIRS
# 3. WALKING_DOWNSTAIRS
# 4. SITTING
# 5. STANDING
# 6. LAYING
# TWO MEASUREMENTS
# 3-axial linear acceleration and 3-axial angular velocity
# id INDIVIDUAL,X
#==============================================================================

## load_exp_batch
#
load_exp_batch <- function(batch.folder = "test") {
  str_path <- file.path(getwd(),batch.folder)
  
  #load subject_*.txt
  subj_id <- read.table(file=file.path(str_path,sprintf("subject_%s.txt",batch.folder)),header=F)
  colnames(subj_id) = sprintf("subject")
  
  #load Y_*.txt activity
  activity <- read.table(file=file.path(str_path,sprintf("Y_%s.txt",batch.folder)),header=F)
  colnames(activity) = sprintf("activity_id")
  
  #load X_*.txt measures
  subj_data <- read.table(file=file.path(str_path,sprintf("X_%s.txt",batch.folder)),header=F)
  
  subj_id <- cbind(subj_id,subj_data)
  subj_id <- cbind(subj_id,activity)
  return(subj_id)
}

## load_feat
#  This function will extract the list of features from the features.txt file
#    
load_feat <- function() {
  feat.df <- read.table(file='features.txt',header=F)
  lfeat <- as.character(feat.df$V2)
  lfeat_id <- as.character(feat.df$V1)
  return(lfeat)
}

## load_activity
#  This function will extract the list of features from the features.txt file
#    
load_activity <- function() {
  activity.df <- read.table(file='activity_labels.txt',header=F)
  id_to_activity<-new.env()
  l_str_id = as.character(activity.df$V1)
  l_str_act = as.character(activity.df$V2)
  for(i in 1:length(l_str_id)){
    id_to_activity[[l_str_id[i]]] <- l_str_act[i]
  }
  return(id_to_activity)
}

## merge_and_write_tidy_data
#  This function will merge the test and training data
#  Args:
#    data.path: changes the current wd if entered
#    out.file: the output file path
merge_and_write_tidy_data <- function(data.path = "",out.file="") {
  if(data.path != ""){
    setwd(data.path)
  }
  
  #load list of features
  lfeatures <- c("subject",load_feat())
  lfeatures <- append(lfeatures,"activity_id")
  
  #load id to activity
  id_to_activity <- load_activity()

  #read batch folder "test"
  test.batch.df <- load_exp_batch(batch.folder="test")
  colnames(test.batch.df) = lfeatures
  
  #read batch folder "train"
  train.batch.df <- load_exp_batch(batch.folder="train")
  colnames(train.batch.df) = lfeatures
  
  #merge test and train sample data
  merged.batch.df <- rbind(test.batch.df,train.batch.df)
  
  #loop get activity lbl
  activity_lbl = c()
  for(i in 1:nrow(merged.batch.df)){
    nval = merged.batch.df$activity_id[i]
    activity_lbl <- append(activity_lbl,id_to_activity[[as.character(nval)]])
  }
  merged.batch.df<-cbind(merged.batch.df,activity_lbl)
  
  #clean rows
  lmeanid <- grep("mean()",lfeatures)
  lstdid <- grep("std()",lfeatures)
  lallid <- append(lmeanid,lstdid)
  sub.merged.batch.df <- merged.batch.df[,c(1,ncol(merged.batch.df),sort(lallid))] 
  
  #tidy data
  sub.df = data.frame()
  for(subject in unique(sub.merged.batch.df$subject))
  {
    for(activity in unique(sub.merged.batch.df$activity_lbl))
    {
      temp.df <- sub.merged.batch.df[sub.merged.batch.df$subject==subject,]
      temp.df <- temp.df[temp.df$activity_lbl==activity,]
      mean.df <- t(data.frame(colMeans(temp.df[,3:ncol(temp.df)])))
      temp.sub.df <- cbind(subject,activity,mean.df)
      rownames(temp.sub.df) = paste(subject,activity,sep="_")
      if(nrow(sub.df)==0){
        sub.df <- temp.sub.df
      }else{
        sub.df <- rbind(sub.df,temp.sub.df)
      }
    }
  }
  if(out.file!=""){
    write.table(sub.df,file=out.file,row.names = FALSE,quote=FALSE)
  }
  return(sub.df)
}
