tidydataproject
===============

course project submission for coursera "get and clean data"

Files:-
 
 (1)  run_analysis.R - 
 
 This is the R script that takes the default data files provided in "UCI HAR
 Dataset" directory and processes them to create output.txt, the output file
 required for the course project.  To execute the script, first download the
 dataset and unzip it as a "UCI HAR Dataset" sub-dir in the directory 
 containing this script.  You can then run the script.  
 
 The script is heavily commented to explain the steps that it is taking to 
 tidy the data.
 
 What the script does:-
 
 (Step 0)  
    The script first reads the following text files provided in the "UCI HAR 
    Dataset" into data frames.  The files are:
    - 'features.txt': List of all features.
    - 'activity_labels.txt': Links the class labels with their activity name.
    - 'train/X_train.txt': Training set.
    - 'train/y_train.txt': Training labels.
    - 'test/X_test.txt': Test set.
    - 'test/y_test.txt': Test labels.
    At the same time, the column names of x_test and x_train are renamed with
    descriptive names obtained from 'features.txt'
 (Step 1)
    - the test dataset (30%) and train dataset (70%) are then merged to form a 
      full dataset
    - there are 561 measurement variables representing the measurements 
      described in "features.txt"
    - 2 more additional variables representing the "subject" and "activity" is 
      created after the merge
 (Step 2)
    - extract only the columns that has 'mean()' and 'std()' in the variable 
      name (66 variables) + 2 other variables (activity and subject)
    - this is because these are mean and std dev measurements from the measured 
      signals as described in "features_info.txt"
    - we are not extracting the meanFreq() and angle mean variables as the 
      question specifically asked for mean and std deviations on the signals 
      only
 (Step 3)
    - the activity codes (1-6) in the "activity" column are replaced with 
      descriptive names
    - the descriptive names are obtained from 'activity_labels.txt'
 (Step 4)
    - as the columns have been replaced with descriptive names in step (1),
      this step is easier 
    - I have also changed the "t" and "f" in the columns to something more
      descriptive based on 'features_info.txt'
    - 't' is changed to 'Time-' and 'f' is changed to 'Frequency-'
 (Step 5)
    - this step groups the data by activity and subject
    - it then calculates the MEAN of each measurement by the grouped data
    - I have used the 'dplyr' package by Heckham
    
 The resultant tidy data set is then written to output.txt


 (2)  output.txt - the tidy data set as required by the course project 

 This is the file containining the tidy data set, processed according to 
 the 5 step requirements of the course project.
 
 The tidy data set has 180 observations representing the grouped mean
 measurements by activity (6) and subject (30).
 
 It has 68 variables - activity + subject + 66 variables of mean() and std()
 measurements.
 
 
 (3)  CodeBook.md

 This is the CodeBook describing the variables.
 
 