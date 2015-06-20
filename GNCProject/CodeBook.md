## run_analysis.R Output Variables


The features selected for the raw dataset come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 

Similarly, the acceleration signal was then separated into body and gravity acceleration signals 
(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 


Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
(Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean


##The script run_analysis.R will collect the mean value and standard deviations for the above measurements as the variables.
##The output will take the average each variable for each activity and each subject.

The following is the output list:

*Subject					: Volunteer ID
*Activity				: Volunteer's activity including WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
*tBodyAcc.mean...X			: Average value per Volunteer per Activity for {mean value of(accelerometer raw signals X axis)}.  Unit in second
*tBodyAcc.mean...Y			: Average value per Volunteer per Activity for {mean value of(accelerometer raw signals Y axis)}.  Unit in second
*tBodyAcc.mean...Z			: Average value per Volunteer per Activity for {mean value of(accelerometer raw signals Z axis)}.  Unit in second
*tGravityAcc.mean...X			: Average value per Volunteer per Activity for {mean value of(gravity acceleration signal X axis)}.  Unit in second
*tGravityAcc.mean...Y			: Average value per Volunteer per Activity for {mean value of(gravity acceleration signal Y axis)}.  Unit in second
*tGravityAcc.mean...Z			: Average value per Volunteer per Activity for {mean value of(gravity acceleration signal Z axis)}.  Unit in second
*tBodyAccJerk.mean...X			: Average value per Volunteer per Activity for {mean value of(accelerometer Jerk signals X axis)}.  Unit in second
*tBodyAccJerk.mean...Y			: Average value per Volunteer per Activity for {mean value of(accelerometer Jerk signals Y axis)}.  Unit in second
*tBodyAccJerk.mean...Z			: Average value per Volunteer per Activity for {mean value of(accelerometer Jerk signals Z axis)}.  Unit in second
*tBodyGyro.mean...X			: Average value per Volunteer per Activity for {mean value of(gyroscope raw signals X axis)}.  Unit in second
*tBodyGyro.mean...Y			: Average value per Volunteer per Activity for {mean value of(gyroscope raw signals Y axis)}.  Unit in second
*tBodyGyro.mean...Z			: Average value per Volunteer per Activity for {mean value of(gyroscope raw signals Z axis)}.  Unit in second
*tBodyGyroJerk.mean...X			: Average value per Volunteer per Activity for {mean value of(gyroscope Jerk signals X axis)}.  Unit in second
*tBodyGyroJerk.mean...Y			: Average value per Volunteer per Activity for {mean value of(gyroscope Jerk signals Y axis)}.  Unit in second
*tBodyGyroJerk.mean...Z			: Average value per Volunteer per Activity for {mean value of(gyroscope Jerk signals Z axis)}.  Unit in second
*tBodyAccMag.mean..			: Average value per Volunteer per Activity for {mean value of (magnitude of 3D accelerometer signals calculated using the Euclidean norm)}.  Unit in second
*tGravityAccMag.mean..			: Average value per Volunteer per Activity for {mean value of (magnitude of 3D gravity acceleration signals calculated using the Euclidean norm)}.  Unit in second
*tBodyAccJerkMag.mean..			: Average value per Volunteer per Activity for {mean value of (magnitude of 3D accelerometer Jerk signals signals calculated using the Euclidean norm)}.  Unit in second
*tBodyGyroMag.mean..			: Average value per Volunteer per Activity for {mean value of (magnitude of 3D gyroscope raw signals signals calculated using the Euclidean norm)}.  Unit in second
*tBodyGyroJerkMag.mean.			: Average value per Volunteer per Activity for {mean value of (magnitude of 3D gyroscope Jerk  signals signals calculated using the Euclidean norm)}.  Unit in second
*fBodyAcc.mean...X			: Average value per Volunteer per Activity for {mean value of(FTF accelerometer raw signals X axis)}.  Unit in HZ
*fBodyAcc.mean...Y			: Average value per Volunteer per Activity for {mean value of(FTF accelerometer raw signals Y axis)}.  Unit in HZ
*fBodyAcc.mean...Z			: Average value per Volunteer per Activity for {mean value of(FTF accelerometer raw signals Z axis)}.  Unit in HZ
*fBodyAcc.meanFreq...X			: Average value per Volunteer per Activity for {mean value of(Frequency accelerometer raw signals X axis)}.  Unit in HZ
*fBodyAcc.meanFreq...Y			: Average value per Volunteer per Activity for {mean value of(Frequency accelerometer raw signals Y axis)}.  Unit in HZ
*fBodyAcc.meanFreq...Z			: Average value per Volunteer per Activity for {mean value of(Frequency accelerometer raw signals Z axis)}.  Unit in HZ
*fBodyAccJerk.mean...X			: Average value per Volunteer per Activity for {mean value of(FTF accelerometer Jerk signals X axis)}.  Unit in Hz
*fBodyAccJerk.mean...Y			: Average value per Volunteer per Activity for {mean value of(FTF accelerometer Jerk signals X axis)}.  Unit in Hz
*fBodyAccJerk.mean...Z			: Average value per Volunteer per Activity for {mean value of(FTF accelerometer Jerk signals Y axis)}.  Unit in Hz
*fBodyAccJerk.meanFreq...X		: Average value per Volunteer per Activity for {mean value of(Frequency accelerometer Jerk signals X axis)}.  Unit in Hz
*fBodyAccJerk.meanFreq...Y		: Average value per Volunteer per Activity for {mean value of(Frequency accelerometer Jerk signals X axis)}.  Unit in Hz
*fBodyAccJerk.meanFreq...Z		: Average value per Volunteer per Activity for {mean value of(Frequency accelerometer Jerk signals Y axis)}.  Unit in Hz
*fBodyGyro.mean...X			: Average value per Volunteer per Activity for {mean value of(FTF gyroscope raw signals X axis)}.  Unit in Hz
*fBodyGyro.mean...Y			: Average value per Volunteer per Activity for {mean value of(FTF gyroscope raw signals Y axis)}.  Unit in Hz
*fBodyGyro.mean...Z			: Average value per Volunteer per Activity for {mean value of(FTF gyroscope raw signals Z axis)}.  Unit in Hz
*fBodyGyro.meanFreq...X			: Average value per Volunteer per Activity for {mean value of(Frequency gyroscope raw signals X axis)}.  Unit in Hz
*fBodyGyro.meanFreq...Y			: Average value per Volunteer per Activity for {mean value of(Frequency gyroscope raw signals Y axis)}.  Unit in Hz
*fBodyGyro.meanFreq...Z			: Average value per Volunteer per Activity for {mean value of(Frequency gyroscope raw signals Z axis)}.  Unit in Hz
*fBodyAccMag.mean..			: Average value per Volunteer per Activity for {mean value of (FTF magnitude of 3D accelerometer signals calculated using the Euclidean norm)}.  Unit in Hz
*fBodyAccMag.meanFreq..			: Average value per Volunteer per Activity for {mean value of (Frequency magnitude of 3D accelerometer signals calculated using the Euclidean norm)}.  Unit in Hz
*fBodyBodyAccJerkMag.mean..		: Average value per Volunteer per Activity for {mean value of (FTF magnitude of 3D accelerometer signals calculated using the Euclidean norm)}.  Unit in Hz
*fBodyBodyAccJerkMag.meanFreq..		: Average value per Volunteer per Activity for {mean value of (Frequency magnitude of 3D accelerometer signals calculated using the Euclidean norm)}.  Unit in Hz
*fBodyBodyGyroMag.mean.			: Average value per Volunteer per Activity for {mean value of (FTF magnitude of 3D gyroscope raw signals signals calculated using the Euclidean norm)}.  Unit in Hz
*fBodyBodyGyroMag.meanFreq..		: Average value per Volunteer per Activity for {mean value of (frequency magnitude of 3D gyroscope raw signals signals calculated using the Euclidean norm)}.  Unit in Hz
*fBodyBodyGyroJerkMag.mean..		: Average value per Volunteer per Activity for {mean value of (FTF magnitude of 3D accelerometer Jerk signals signals calculated using the Euclidean norm)}.  Unit in Hz
*fBodyBodyGyroJerkMag.meanFreq.		: Average value per Volunteer per Activity for {mean value of (Frequency magnitude of 3D gyroscope Jerk  signals signals calculated using the Euclidean norm)}.  Unit in Hz
*angle.tBodyAccMean.gravity.		: Average value per Volunteer per Activity for {mean value of(angle acceleration signal )}.  Unit in second
*angle.tBodyAccJerkMean..gravityMean.	: Average value per Volunteer per Activity for {mean value of(angle acceleration Jerk )}.  Unit in second
*angle.tBodyGyroMean.gravityMean.	: Average value per Volunteer per Activity for {mean value of(angle gyroscoope )}.  Unit in second
*angle.tBodyGyroJerkMean.gravityMean.	: Average value per Volunteer per Activity for {mean value of(angle gyroscoope Jerk)}.  Unit in second
*angle.X.gravityMean.			: Average value per Volunteer per Activity for {mean value of(angle signal window sample X axis)}.  Unit in second
*angle.Y.gravityMean.			: Average value per Volunteer per Activity for {mean value of(angle signal window sample Y axis)}.  Unit in second
*angle.Z.gravityMean.			: Average value per Volunteer per Activity for {mean value of(angle signal window sample Z axis)}.  Unit in second
*tBodyAcc.std...X			: Average value per Volunteer per Activity for {standard deviation of(accelerometer raw signals X axis)}.  Unit in second
*tBodyAcc.std...Y			: Average value per Volunteer per Activity for {standard deviation of(accelerometer raw signals Y axis)}.  Unit in second
*tBodyAcc.std...Z			: Average value per Volunteer per Activity for {standard deviation of(accelerometer raw signals Z axis)}.  Unit in second
*tGravityAcc.std...X			: Average value per Volunteer per Activity for {standard deviation of(gravity acceleration signal X axis)}.  Unit in second
*tGravityAcc.std...Y			: Average value per Volunteer per Activity for {standard deviation of(gravity acceleration signal Y axis)}.  Unit in second
*tGravityAcc.std...Z			: Average value per Volunteer per Activity for {standard deviation of(gravity acceleration signal Z axis)}.  Unit in second
*tBodyAccJerk.std...X			: Average value per Volunteer per Activity for {standard deviation of(accelerometer Jerk signals X axis)}.  Unit in second
*tBodyAccJerk.std...Y			: Average value per Volunteer per Activity for {standard deviation of(accelerometer Jerk signals Y axis)}.  Unit in second
*tBodyAccJerk.std...Z			: Average value per Volunteer per Activity for {standard deviation of(accelerometer Jerk signals Z axis)}.  Unit in second
*tBodyGyro.std...X			: Average value per Volunteer per Activity for {standard deviation of(gyroscope raw signals X axis)}.  Unit in second
*tBodyGyro.std...Y			: Average value per Volunteer per Activity for {standard deviation of(gyroscope raw signals Y axis)}.  Unit in second
*tBodyGyro.std...Z			: Average value per Volunteer per Activity for {standard deviation of(gyroscope raw signals Z axis)}.  Unit in second
*tBodyGyroJerk.std...X			: Average value per Volunteer per Activity for {standard deviation of(gyroscope Jerk signals X axis)}.  Unit in second
*tBodyGyroJerk.std...Y			: Average value per Volunteer per Activity for {standard deviation of(gyroscope Jerk signals Y axis)}.  Unit in second
*tBodyGyroJerk.std...Z			: Average value per Volunteer per Activity for {standard deviation of(gyroscope Jerk signals Z axis)}.  Unit in second
*tBodyAccMag.std..			: Average value per Volunteer per Activity for {standard deviation of (magnitude of 3D accelerometer signals calculated using the Euclidean norm)}.  Unit in second
*tGravityAccMag.std..			: Average value per Volunteer per Activity for {standard deviation of (magnitude of 3D gravity acceleration signals calculated using the Euclidean norm)}.  Unit in second
*tBodyAccJerkMag.std..			: Average value per Volunteer per Activity for {standard deviation of (magnitude of 3D accelerometer Jerk signals signals calculated using the Euclidean norm)}.  Unit in second
*tBodyGyroMag.std..			: Average value per Volunteer per Activity for {standard deviation of (magnitude of 3D gyroscope raw signals signals calculated using the Euclidean norm)}.  Unit in second
*tBodyGyroJerkMag.std..			: Average value per Volunteer per Activity for {standard deviation of (magnitude of 3D gyroscope Jerk  signals signals calculated using the Euclidean norm)}.  Unit in second
*fBodyAcc.std...X			: Average value per Volunteer per Activity for {standard deviation of(FTF accelerometer raw signals X axis)}.  Unit in HZ
*fBodyAcc.std...Y			: Average value per Volunteer per Activity for {standard deviation of(FTF accelerometer raw signals Y axis)}.  Unit in HZ
*fBodyAcc.std...Z			: Average value per Volunteer per Activity for {standard deviation of(FTF accelerometer raw signals Z axis)}.  Unit in HZ
*fBodyAccJerk.std...X			: Average value per Volunteer per Activity for {standard deviation of(FTF accelerometer Jerk signals X axis)}.  Unit in Hz
*fBodyAccJerk.std...Y			: Average value per Volunteer per Activity for {standard deviation of(FTF accelerometer Jerk signals X axis)}.  Unit in Hz
*fBodyAccJerk.std...Z			: Average value per Volunteer per Activity for {standard deviation of(FTF accelerometer Jerk signals Y axis)}.  Unit in Hz
*fBodyGyro.std...X			: Average value per Volunteer per Activity for {standard deviation of(FTF gyroscope raw signals X axis)}.  Unit in Hz
*fBodyGyro.std...Y			: Average value per Volunteer per Activity for {standard deviation of(FTF gyroscope raw signals Y axis)}.  Unit in Hz
*fBodyGyro.std...Z			: Average value per Volunteer per Activity for {standard deviation of(FTF gyroscope raw signals Z axis)}.  Unit in Hz
*fBodyAccMag.std..			: Average value per Volunteer per Activity for {standard deviation of (FTF magnitude of 3D accelerometer signals calculated using the Euclidean norm)}.  Unit in Hz
*fBodyBodyAccJerkMag.std..		: Average value per Volunteer per Activity for {standard deviation of (FTF magnitude of 3D accelerometer signals calculated using the Euclidean norm)}.  Unit in Hz
*fBodyBodyGyroMag.std..			: Average value per Volunteer per Activity for {standard deviation of (FTF magnitude of 3D gyroscope raw signals signals calculated using the Euclidean norm)}.  Unit in Hz
*fBodyBodyGyroJerkMag.std..		: Average value per Volunteer per Activity for {standard deviation of (FTF magnitude of 3D accelerometer Jerk signals signals calculated using the Euclidean norm)}.  Unit in Hz
