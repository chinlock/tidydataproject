This is the Code Book for the dataset in output.txt.
There are 68 variables described below.
Apart from activity and subject, the rest of the 66 variables are mean
values of the respective measurements done for a subject performing a 
particular activity.  These 66 variables are selected from the original
561 measurements based on the requirements of the course project.
(For more information about the original 561 measurements, please refer
to features.txt and features_info.txt in the original data set.)
How the transformations have been done according to course project requirements
is decribed in "README.md".
The transformation script is in "run_analysis.R"

"activity"
        Activity the subject is engaged in.  Factor with 6 levels.
                WALKING
                WALKING_UPSTAIRS
                WALKING_DOWNSTAIRS
                SITTING
                STANDING
                LAYING

"subject"       
        Code identifying the volunteer subject.  Integer.
                1-30

"Time-BodyAcc-mean()-X"  
        Mean of Body Acceleration measurements in X direction of subject 
        performing an activity.  
	Number.

"Time-BodyAcc-mean()-Y"   
        Mean of Body Acceleration measurements in Y direction of subject 
        performing an activity.  
	Number.

"Time-BodyAcc-mean()-Z"                
        Mean of Body Acceleration measurements in Z direction of subject 
        performing an activity.  
	Number.

"Time-BodyAcc-std()-X"                 
        Std Dev. of Body Acceleration measurements in X direction of subject 
        performing an activity.  
	Number.

"Time-BodyAcc-std()-Y"  
        Std Dev. of Body Acceleration measurements in Y direction of subject 
        performing an activity.  
	Number.

"Time-BodyAcc-std()-Z"                
        Std Dev. of Body Acceleration measurements in Z direction of subject 
        performing an activity.  
	Number.

"Time-GravityAcc-mean()-X"  
        Mean of Gravity Acceleration measurements in X direction of subject 
        performing an activity.  
	Number.

"Time-GravityAcc-mean()-Y"    
        Mean of Gravity Acceleration measurements in Y direction of subject 
        performing an activity.  
	Number.

"Time-GravityAcc-mean()-Z"    
        Mean of Gravity Acceleration measurements in Z direction of subject 
        performing an activity.  
	Number.

"Time-GravityAcc-std()-X"
        Std Dev. of Gravity Acceleration measurements in X direction of subject 
        performing an activity.  
	Number.

"Time-GravityAcc-std()-Y"  
        Std Dev. of Gravity Acceleration measurements in Y direction of subject 
        performing an activity.  
	Number.

"Time-GravityAcc-std()-Z"              
        Std Dev. of Gravity Acceleration measurements in Z direction of subject 
        performing an activity.  
	Number.

"Time-BodyAccJerk-mean()-X"   
        Mean of Body Acceleration Jerk Signal in X direction of subject
        performing an activity.  
	Number.

"Time-BodyAccJerk-mean()-Y"  
        Mean of Body Acceleration Jerk Signal in Y direction of subject
        performing an activity.  
	Number.

"Time-BodyAccJerk-mean()-Z"            
        Mean of Body Acceleration Jerk Signal in Z direction of subject
        performing an activity.  
	Number.

"Time-BodyAccJerk-std()-X"  
        Std Dev. of Body Acceleration Jerk Signal in X direction of subject
        performing an activity.  
	Number.

"Time-BodyAccJerk-std()-Y"    
        Std Dev. of Body Acceleration Jerk Signal in Y direction of subject
        performing an activity.  
	Number.

"Time-BodyAccJerk-std()-Z"            
        Std Dev. of Body Acceleration Jerk Signal in Z direction of subject
        performing an activity.  
	Number.

"Time-BodyGyro-mean()-X"   
        Mean of Body Gyroscope measurements in X direction of subject
        performing an activity.  
	Number.

"Time-BodyGyro-mean()-Y"   
        Mean of Body Gyroscope measurements in Y direction of subject
        performing an activity.  
	Number.

"Time-BodyGyro-mean()-Z"  
        Mean of Body Gyroscope measurements in Z direction of subject
        performing an activity.  
	Number.

"Time-BodyGyro-std()-X"  
        SD of Body Gyroscope measurements in X direction of subject
        performing an activity.  
	Number.

"Time-BodyGyro-std()-Y"    
        SD of Body Gyroscope measurements in Y direction of subject
        performing an activity.  
	Number.

"Time-BodyGyro-std()-Z"       
        SD of Body Gyroscope measurements in Z direction of subject
        performing an activity.  
	Number.

"Time-BodyGyroJerk-mean()-X"   
        Mean of Body Angular Velovity Jerk Signal in X direction of subject
        performing an activity.  
	Number.

"Time-BodyGyroJerk-mean()-Y"          
        Mean of Body Angular Velovity Jerk Signal in Y direction of subject
        performing an activity.  
	Number.

"Time-BodyGyroJerk-mean()-Z"           
        Mean of Body Angular Velovity Jerk Signal in Z direction of subject
        performing an activity.  
	Number.

"Time-BodyGyroJerk-std()-X"  
        Mean of Body Angular Velovity Jerk Signal in X direction of subject
        performing an activity.  
	Number.

"Time-BodyGyroJerk-std()-Y" 
        Mean of Body Angular Velovity Jerk Signal in Y direction of subject
        performing an activity.  
	Number.

"Time-BodyGyroJerk-std()-Z"
        Mean of Body Angular Velovity Jerk Signal in Z direction of subject
        performing an activity.  
	Number.

"Time-BodyAccMag-mean()"   
        Mean of Body Acceleration Magnitude of subject performing an acitivity.
        Number.

"Time-BodyAccMag-std()" 
        SD of Body Acceleration Magnitude of subject performing an acitivity.
        Number.

"Time-GravityAccMag-mean()"     
        Mean of Gravity Acceleration Magnitude of subject performing an acitivity.
        Number.

"Time-GravityAccMag-std()"
        SD of Gravity Acceleration Magnitude of subject performing an acitivity.
        Number.

"Time-BodyAccJerkMag-mean()"  
        Mean of Body Acceleration Jerk Magnitude of subject performing an 
        activity. 
	Number.

"Time-BodyAccJerkMag-std()"   
        SD of Body Acceleration Jerk Magnitude of subject performing an 
        activity. 
	Number.

"Time-BodyGyroMag-mean()"   
        Mean of Body Gyroscope Magnitude of subject performing an 
        activity. 
	Number.

"Time-BodyGyroMag-std()"   
        SD of Body Gyroscope Magnitude of subject performing an 
        activity. Number.

"Time-BodyGyroJerkMag-mean()"         
        Mean of Body Gyroscope Jerk Magnitude of subject performing an 
        activity. Number.

"Time-BodyGyroJerkMag-std()"   
        SD of Body Gyroscope Jerk Magnitude of subject performing an 
        activity. Number.

"Frequency-BodyAcc-mean()-X"    
        Mean of Fast Fourier Transform (FFT) of Body Acceleration measurements 
        in X direction of subject performing an activity.  
        Number.

"Frequency-BodyAcc-mean()-Y"   
        Mean of Fast Fourier Transform (FFT) of Body Acceleration measurements 
        in Y direction of subject performing an activity.  
        Number.

"Frequency-BodyAcc-mean()-Z" 
        Mean of Fast Fourier Transform (FFT) of Body Acceleration measurements 
        in Z direction of subject performing an activity.  
        Number.

"Frequency-BodyAcc-std()-X"   
        SD of Fast Fourier Transform (FFT) of Body Acceleration measurements 
        in X direction of subject performing an activity.  
        Number.

"Frequency-BodyAcc-std()-Y"  
        SD of Fast Fourier Transform (FFT) of Body Acceleration measurements 
        in Y direction of subject performing an activity.  
        Number.

"Frequency-BodyAcc-std()-Z"  
        SD of Fast Fourier Transform (FFT) of Body Acceleration measurements 
        in Z direction of subject performing an activity.  
        Number.

"Frequency-BodyAccJerk-mean()-X" 
        Mean of Fast Fourier Transform (FFT) of Body Acceleration Jerk signals 
        in X direction of subject performing an activity.  
        Number.

"Frequency-BodyAccJerk-mean()-Y"    
        Mean of Fast Fourier Transform (FFT) of Body Acceleration Jerk signals 
        in Y direction of subject performing an activity.  
        Number.

"Frequency-BodyAccJerk-mean()-Z"    
        Mean of Fast Fourier Transform (FFT) of Body Acceleration Jerk signals 
        in Z direction of subject performing an activity.  
        Number.

"Frequency-BodyAccJerk-std()-X"  
        SD of Fast Fourier Transform (FFT) of Body Acceleration Jerk signals 
        in X direction of subject performing an activity.  
        Number.

"Frequency-BodyAccJerk-std()-Y"    
        SD of Fast Fourier Transform (FFT) of Body Acceleration Jerk signals 
        in Y direction of subject performing an activity.  
        Number.

"Frequency-BodyAccJerk-std()-Z"   
        SD of Fast Fourier Transform (FFT) of Body Acceleration Jerk signals 
        in Z direction of subject performing an activity.  
        Number.

"Frequency-BodyGyro-mean()-X"   
        Mean of FFT of Body Gyroscope measurements in X direction of subject
        performing an activity.  
        Number.

"Frequency-BodyGyro-mean()-Y" 
        Mean of FFT of Body Gyroscope measurements in Y direction of subject
        performing an activity.  
        Number.

"Frequency-BodyGyro-mean()-Z" 
        Mean of FFT of Body Gyroscope measurements in Z direction of subject
        performing an activity.  
        Number.

"Frequency-BodyGyro-std()-X"  
        SD of FFT of Body Gyroscope measurements in X direction of subject
        performing an activity.  
        Number.

"Frequency-BodyGyro-std()-Y"     
        SD of FFT of Body Gyroscope measurements in Y direction of subject
        performing an activity.  
        Number.

"Frequency-BodyGyro-std()-Z" 
        SD of FFT of Body Gyroscope measurements in Z direction of subject
        performing an activity.  
        Number.

"Frequency-BodyAccMag-mean()" 
        Mean of FFT of Body Acceleration Magnitude of subject performing
        an activity.
        Number.

"Frequency-BodyAccMag-std()"
        SD of FFT of Body Acceleration Magnitude of subject performing
        an activity.
        Number.

"Frequency-BodyBodyAccJerkMag-mean()"  
        Mean of of FFT of Body Acceleration Jerk Magnitude of subject
        performing an activity.
        Number.

"Frequency-BodyBodyAccJerkMag-std()"  
        SD of of FFT of Body Acceleration Jerk Magnitude of subject
        performing an activity.
        Number.

"Frequency-BodyBodyGyroMag-mean()"    
        Mean of FFT of Body Gyroscope Magnitude of subject performing
        an activity.
        Number.

"Frequency-BodyBodyGyroMag-std()" 
        SD of FFT of Body Gyroscope Magnitude of subject performing
        an activity.
        Number.

"Frequency-BodyBodyGyroJerkMag-mean()" 
        Mean of FFT of Body Gyroscope Jerk Magnitude of subject performing
        an activity.
        Number.

"Frequency-BodyBodyGyroJerkMag-std()" 
        SD of FFT of Body Gyroscope Jerk Magnitude of subject performing
        an activity.
        Number.
