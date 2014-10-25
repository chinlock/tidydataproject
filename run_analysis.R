##
## run_analysis.R
## - course project for "Getting and Cleaning Data"
##

### INSTRUCTIONS:
# You should create one R script called run_analysis.R that does the following. 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of 
#    each variable for each activity and each subject.

# load libraries
library(dplyr);
library(tidyr);

run_analysis <- function()
{
        ## data files
        test_subject_file <- "./UCI HAR Dataset/test/subject_test.txt"    # the subject involved in the observation (1-30)
        y_test_file <- "./UCI HAR Dataset/test/y_test.txt"                # the activity he was involved in (1-6)
        x_test_file <- "./UCI HAR Dataset/test/x_test.txt"                # the measurements of the activity (561 feature points)
        train_subject_file <- "./UCI HAR Dataset/train/subject_train.txt"
        y_train_file <- "./UCI HAR Dataset/train/y_train.txt"
        x_train_file <- "./UCI HAR Dataset/train/x_train.txt"
        features_file <- "./UCI HAR Dataset/features.txt"                   # the features file describing the variables of measurements
        activity_labels_file <- "./UCI HAR Dataset/activity_labels.txt"     # the description of the activitoes (1-6)
        
        ###
        ###  Step 0:  Read the data files
        ###
        print(">>> Reading Data Files...")
        
        ##  read the test data set (30%)
        if (file.exists(test_subject_file)) subject_test <- read.table(test_subject_file)  
        if (file.exists(y_test_file)) y_test <- read.table(y_test_file)  
        if (file.exists(x_test_file)) x_test <- read.table(x_test_file)  
        
        ##  read the train data set (70%)
        if (file.exists(train_subject_file)) subject_train <- read.table(train_subject_file) 
        if (file.exists(y_train_file)) y_train <- read.table(y_train_file)
        if (file.exists(x_train_file)) x_train <- read.table(x_train_file)

        # read the features file
        if(file.exists(features_file)) features_df <- read.table(features_file)
        # read the activity labels file
        if (file.exists(activity_labels_file)) activity_labels <- read.table(activity_labels_file)
        
        # naming the columns here makes it easier for step (4)
        colnames(x_test) <- features_df$V2      # name the columns of the test dataset
        colnames(x_train) <- features_df$V2     # name the columns of the train dataset

        ###
        ### Step 1:  MERGE the data sets
        ###
        print(">>> Merging Data Sets...")
        
        ## merge the test data sets column wise
        test_df <- cbind(subject_test, y_test, x_test)
        ## merge the train data sets column wise
        train_df <- cbind(subject_train, y_train, x_train)
        ## merge test and train data sets together
        full_df <- rbind(test_df, train_df)
        
        ## rename the first 2 columns as subject (values: 1-30) and activity (values:1-6)
        colnames(full_df)[1] <- "subject"
        colnames(full_df)[2] <- "activity"
        
        ###
        ### Step 2:  Extract only mean and std dev measurements for each measurement
        ###
        print(">>> Extracting mean() and std() columns only...")

        # extract only the columns that has 'mean()' and 'std()' 
        # because these are mean and std dev measurements from the measured signals 
        # not extracting the meanFreq() and angle mean variables 
        # as the question specifically asked for mean and std deviations on the 
        # signals only
        expr <- "mean[()]|std[()]|subject|activity"

        # subset the dataset with the required cols
        full_df <- full_df[, grep(expr, colnames(full_df), value=TRUE) ]   # 66 + 2 columns

        ###
        ### Step 3:  Use descriptive activity names to name the activities in the data set
        ###
        print(">>> Factoring descriptive activity names...")
        # replace the 1-6 with descriptive names "WALKING", etc.
        full_df$activity <- factor(full_df$activity, labels=activity_labels$V2)
        
        ###
        ### Step 4: Label dataset with descriptive variable names
        ###
        ##  the V1, V2, ... column names has already been replaced with meaningful ones in step (1)
        ##  use gsub() to replace short forms to longer forms
        print(">>> Labelling dataset with descriptive variable names...")
        names(full_df) <- gsub("^t", "Time-", names(full_df))           # tXXXX to Time-XXXX
        names(full_df) <- gsub("^f", "Frequency-", names(full_df))      # fXXXX to Frequency-XXXX
        
        ###
        ### Step 5: Tidy data - From the data set in step 4, creates a second, independent tidy 
        ###         data set with the average of each variable for each activity and each subject.
        ###
        #  use ddply() if using "plyr" package
        #  use group_by() and summarise_each() if using "dplyr" package
        print(">>> Calulating summarized data by activity and subject ...")

        #summarized_df <- ddply(full_df, .(activity, subject), numcolwise(mean))
        summarised_df <-
                full_df %>%
                group_by(activity, subject) %>%
                summarise_each(funs(mean))
        
        print(">>> Writing out the tidy data set to output.txt...")
        write.table(summarised_df,file="output.txt", row.names=FALSE)   #write the summarised data to file
        
        print(">>> Completed!")
        return(summarised_df)
}