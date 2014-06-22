**Description of the study**

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
The data was collected in 2012 by researchers at the University of Genoa. It was built from recordings of subjects performing activities of daily living while carrying a waist-mounted smartphone with embedded inertial sensors from the accelerometers from the Samsung Galaxy S smartphone.

- Each record in the original dataset provides:
- Tri-axial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Tri-axial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.


**Tidy data file**

The tidy data is stored in a file called tidymean.csv

**Data definition**

| **Row Names** | **Row #** | **Type** | **Description** |
| LAYING | 1 | Num | Laying Activity | Row Name |
| SITTING | 2 | Num | Sitting Activity | Row Name |
| STANDING | 3 | Num | Standing Activity | Row Name |
| WALKING | 4 | Num | Walking Activity | Row Name |
| WALKING_DOWNSTAIRS | 5 | Num | Walking Downstairs Activity |
| WALKING_UPSTAIRS | 6 | Num | Walking Upstairs Activity |
| 1:30 | 7:36 | Num | Test Subjects 1 to 30 |

| **Column Name** | **Col#** | **Type** | **Description** | 
| --- | --- | --- | --- |
| tBodyAccmeanX | 1 | Num | X-Axis Body acceleration mean | 
| tBodyAccmeanY | 2 | Num | Y-Axis Body acceleration mean | 
| tBodyAccmeanZ | 3 | Num | Z-Axis Body acceleration mean | 
| tBodyAccstdX | 4 | Num | X-Axis Body acceleration stdev | 
| tBodyAccstdY | 5 | Num | Y-Axis Body acceleration stdev | 
| tBodyAccstdZ | 6 | Num | Z-Axis Body acceleration stdev | 
| tGravityAccmeanX | 7 | Num | X-Axis Gravity acceleration mean |
| tGravityAccmeanY | 8 | Num | Y-Axis Gravity acceleration mean |
| tGravityAccmeanZ | 9 | Num | Z-Axis Gravity acceleration mean |
| tGravityAccstdX | 10 | Num | X-Axis Gravity acceleration stdev |
| tGravityAccstdY | 11 | Num | Y-Axis Gravity acceleration stdev |
| tGravityAccstdZ | 12 | Num | Z-Axis Gravity acceleration stdev |
| tBodyAccJerkmeanX | 13 | Num | X-Axis Body acceleration jerk mean |
| tBodyAccJerkmeanY | 14 | Num | Y-Axis Body acceleration jerk mean |
| tBodyAccJerkmeanZ | 15 | Num | Z-Axis Body acceleration jerk mean |
| tBodyAccJerkstdX | 16 | Num | X-Axis Body acceleration jerk stdev |
| tBodyAccJerkstdY | 17 | Num | Y-Axis Body acceleration jerk stdev |
| tBodyAccJerkstdZ | 18 | Num | Z-Axis Body acceleration jerk stdev |
| tBodyGyromeanX | 19 | Num | X-Axis Body Gyro mean | 
| tBodyGyromeanY | 20 | Num | Y-Axis Body Gyro mean | 
| tBodyGyromeanZ | 21 | Num | Z-Axis Body Gyro mean |
| tBodyGyrostdX | 22 | Num | X-Axis Body Gyro stdev | 
| tBodyGyrostdY | 23 | Num | Y-Axis Body Gyro stdev | 
| tBodyGyrostdZ | 24 | Num | Z-Axis Body Gyro stdev |
| tBodyGyroJerkmeanX | 25 | Num | X-Axis Body Gyro mean |
| tBodyGyroJerkmeanY | 26 | Num | Y-Axis Body Gyro mean |
| tBodyGyroJerkmeanZ | 27 | Num | Z-Axis Body Gyro mean |
| tBodyGyroJerkstdX | 28 | Num | X-Axis Body Gyro stdev | 
| tBodyGyroJerkstdY | 29 | Num | Y-Axis Body Gyro stdev |
| tBodyGyroJerkstdZ | 30 | Num | Z-Axis Body Gyro stdev |
| tBodyAccMagmean | 31 | Num | Body acceleration mean | 
| tBodyAccMagstd | 32 | Num | Body acceleration stdev | 
| tGravityAccMagmean | 33 | Num | Gravity acceleration mean |
| tGravityAccMagstd | 34 | Num | Gravity acceleration stdev | 
| tBodyAccJerkMagmean | 35 | Num | Body acceleration jerk mean |
| tBodyAccJerkMagstd | 36 | Num | Body acceleration jerk stdev |
| tBodyGyroMagmean | 37 | Num | Body Gyro Mag mean | 
| tBodyGyroMagstd | 38 | Num | Body Gyro Mag stdev | 
| tBodyGyroJerkMagmean | 39 | Num | Body Gyro jerk Mag mean |
| tBodyGyroJerkMagstd | 40 | Num | Body Gyro jerm Mag stdev |
| fBodyAccmeanX | 41 | Num | X-Axis Body acceleration mean | 
| fBodyAccmeanY | 42 | Num | Y-Axis Body acceleration mean |
| fBodyAccmeanZ | 43 | Num | Z-Axis Body acceleration mean | 
| fBodyAccstdX | 44 | Num | X-Axis Body acceleration stdev | 
| fBodyAccstdY | 45 | Num | Y-Axis Body acceleration stdev |
| fBodyAccstdZ | 46 | Num | Z-Axis Body acceleration stdev |
| fBodyAccJerkmeanX | 47 | Num | X-Axis Body acceleration jerk mean | 
| fBodyAccJerkmeanY | 48 | Num | Y-Axis Body acceleration jerk mean |
| fBodyAccJerkmeanZ | 49 | Num | Z-Axis Body acceleration jerk mean | 
| fBodyAccJerkstdX | 50 | Num | X-Axis Body acceleration jerk stdev | 
| fBodyAccJerkstdY | 51 | Num | Y-Axis Body acceleration jerk stdev |
| fBodyAccJerkstdZ | 52 | Num | Z-Axis Body acceleration jerk stdev |
| fBodyGyromeanX | 53 | Num | X-Axis Body Gyro mean | 
| fBodyGyromeanY | 54 | Num | Y-Axis Body Gyro mean | 
| fBodyGyromeanZ | 55 | Num | Z-Axis Body Gyro mean | 
| fBodyGyrostdX | 56 | Num | X-Axis Body Gyro stdev | 
| fBodyGyrostdY | 57 | Num | Y-Axis Body Gyro stdev | 
| fBodyGyrostdZ | 58 | Num | Z-Axis Body Gyro stdev | 
| fBodyAccMagmean | 59 | Num | Body acceleration Mag mean | 
| fBodyAccMagstd | 60 | Num | Body acceleration Mag stdev | 
| fBodyBodyAccJerkMagmean | 61 | Num | Body Body acceleration jerk Mag mean | 
| fBodyBodyAccJerkMagstd | 62 | Num | Body Body acceleration jerk Mag stdev | 
| fBodyBodyGyroMagmean | 63 | Num | Body Body Gyro Mag mean | 
| fBodyBodyGyroMagstd | 64 | Num | Body Body Gyro Mag stdev | 
| fBodyBodyGyroJerkMagmean | 65 | Num | Body Body Gyro jerk Mag mean | 
| fBodyBodyGyroJerkMagstd | 66 | Num | Body Body Gyro jerk Mag stdev | 
