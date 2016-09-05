#Code Book
this document summarizes the fields in the text file tidy_table.txt

## Identity Variables
* SubjectId - The ID assigned to the subject being tested
* ActivityId - The activity that was being performed when the measurement was taken
              (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

## Measures
* TimeBodyAccelerometer-Mean-X
* TimeBodyAccelerometer-Mean-Y
* TimeBodyAccelerometer-Mean-Z
* TimeBodyAccelerometer-StdDev-X
* TimeBodyAccelerometer-StdDev-Y
* TimeBodyAccelerometer-StdDev-Z
* TimeGravityAccelerometer-Mean-X
* TimeGravityAccelerometer-Mean-Y
* TimeGravityAccelerometer-Mean-Z
* TimeGravityAccelerometer-StdDev-X
* TimeGravityAccelerometer-StdDev-Y
* TimeGravityAccelerometer-StdDev-Z
* TimeBodyAccelerometerJerk-Mean-X
* TimeBodyAccelerometerJerk-Mean-Y
* TimeBodyAccelerometerJerk-Mean-Z
* TimeBodyAccelerometerJerk-StdDev-X
* TimeBodyAccelerometerJerk-StdDev-Y
* TimeBodyAccelerometerJerk-StdDev-Z
* TimeBodyGyroscope-Mean-X
* TimeBodyGyroscope-Mean-Y
* TimeBodyGyroscope-Mean-Z
* TimeBodyGyroscope-StdDev-X
* TimeBodyGyroscope-StdDev-Y
* TimeBodyGyroscope-StdDev-Z
* TimeBodyGyroscopeJerk-Mean-X
* TimeBodyGyroscopeJerk-Mean-Y
* TimeBodyGyroscopeJerk-Mean-Z
* TimeBodyGyroscopeJerk-StdDev-X
* TimeBodyGyroscopeJerk-StdDev-Y
* TimeBodyGyroscopeJerk-StdDev-Z
* TimeBodyAccelerometerMagnitude-Mean
* TimeBodyAccelerometerMagnitude-StdDev
* TimeGravityAccelerometerMagnitude-Mean
* TimeGravityAccelerometerMagnitude-StdDev
* TimeBodyAccelerometerJerkMagnitude-Mean
* TimeBodyAccelerometerJerkMagnitude-StdDev
* TimeBodyGyroscopeMagnitude-Mean
* TimeBodyGyroscopeMagnitude-StdDev
* TimeBodyGyroscopeJerkMagnitude-Mean
* TimeBodyGyroscopeJerkMagnitude-StdDev
* FrequencyBodyAccelerometer-Mean-X
* FrequencyBodyAccelerometer-Mean-Y
* FrequencyBodyAccelerometer-Mean-Z
* FrequencyBodyAccelerometer-StdDev-X
* FrequencyBodyAccelerometer-StdDev-Y
* FrequencyBodyAccelerometer-StdDev-Z
* FrequencyBodyAccelerometerJerk-Mean-X
* FrequencyBodyAccelerometerJerk-Mean-Y
* FrequencyBodyAccelerometerJerk-Mean-Z
* FrequencyBodyAccelerometerJerk-StdDev-X
* FrequencyBodyAccelerometerJerk-StdDev-Y
* FrequencyBodyAccelerometerJerk-StdDev-Z
* FrequencyBodyGyroscope-Mean-X
* FrequencyBodyGyroscope-Mean-Y
* FrequencyBodyGyroscope-Mean-Z
* FrequencyBodyGyroscope-StdDev-X
* FrequencyBodyGyroscope-StdDev-Y
* FrequencyBodyGyroscope-StdDev-Z
* FrequencyBodyAccelerometerMagnitude-Mean
* FrequencyBodyAccelerometerMagnitude-StdDev
* FrequencyBodyAccelerometerJerkMagnitude-Mean
* FrequencyBodyAccelerometerJerkMagnitude-StdDev
* FrequencyBodyGyroscopeMagnitude-Mean
* FrequencyBodyGyroscopeMagnitude-StdDev
* FrequencyBodyGyroscopeJerkMagnitude-Mean
* FrequencyBodyGyroscopeJerkMagnitude-StdDev


##From the provided Codebook - (Sources Below)
"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
Features are normalized and bounded within [-1,1]."

- Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
