# Initial data for analysis

The data was obtained from UCI Machine Learning repository. It represents the data collected from Smartphone sensors (gyroscope, accelerometer, etc.) during different activities performed by a group of subjects between 19 and 48 years old.

# Data transformation

The raw data has been transformed through different steps until we got a tidy dataset. The steps performed are the following:

1. Merge training and test sets into one, named **alldata**.
2. Generate another data set with just the mean and the standard deviation, named **meanstddata**.
3. Assign descriptive activity names to meanstddata by reading the activity names from the **activity_labels.txt** file. We had already loaded this file into **activitiesMeta**.
4. Assign descriptive activity names. What we do here is just a simple substitution of the column names to give more meaningfull names.
5. Create a new tidy set with the average of each variable for each activity and subject. To do this we use the aggregate function to group by activity and subject, agregating by the mean function.
The resulting data set is written to a new file at the end of the script. The file is named **avgdata.txt**.

# Description of variables in the Tidy Data set: avgdata.txt

The tidy data set has 81 variables:
* A ** subject** variable that identifies the person who carried out the experiment
* An **activity** variable: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING
* 79 signal variables with average data on it

Following is the description of each of the signal variables:

* **subject**: Identifies the sobject who performed the activity                                           
* **activity**: The actual activity performed by the subject. WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING                                          
* **TimeBodyAccelerometer-Mean()-X**: Average of Mean Value time Body Acceleration in X direction                
* **TimeBodyAccelerometer-Mean()-Y**: Average of Mean Value time Body Acceleration in Y direction
* **TimeBodyAccelerometer-Mean()-Z**: Average of Mean Value time Body Acceleration in Z direction   
* **TimeBodyAccelerometer-StdDev()-X**: Average of Standard deviation time Body Acceleration in X direction 
* **TimeBodyAccelerometer-StdDev()-Y**: Average of Standard deviation time Body Acceleration in Y direction
* **TimeBodyAccelerometer-StdDev()-Z**: Average of Standard deviation time Body Acceleration in Z direction 
* **TimeGravityAccelerometer-Mean()-X**:  Average of Mean Value time Gravity Acceleration in X direction
* **TimeGravityAccelerometer-Mean()-Y**:  Average of Mean Value time Gravity Acceleration in Y direction
* **TimeGravityAccelerometer-Mean()-Z**:  Average of Mean Value time Gravity Acceleration in Z direction           
* **TimeGravityAccelerometer-StdDev()-X**: Average of Standard deviation time Gravity Accelration in X direction
* **TimeGravityAccelerometer-StdDev()-Y**: Average of Standard deviation time Gravity Accelration in Y direction
* **TimeGravityAccelerometer-StdDev()-Z**: Average of Standard deviation time Gravity Accelration in Z direction
* **TimeBodyAccelerometerJerk-Mean()-X**: Average of Mean Value time Body Acceleration Jerk in X direction
* **TimeBodyAccelerometerJerk-Mean()-Y**: Average of Mean Value time Body Acceleration Jerk in Y direction
* **TimeBodyAccelerometerJerk-Mean()-Z**: Average of Mean Value time Body Acceleration Jerk in Z direction
* **TimeBodyAccelerometerJerk-StdDev()-X**: Average of Standard deviation time Body Accelration Jerk in X direction
* **TimeBodyAccelerometerJerk-StdDev()-Y**: Average of Standard deviation time Body Accelration Jerk in Y direction
* **TimeBodyAccelerometerJerk-StdDev()-Z**: Average of Standard deviation time Body Accelration Jerk in Z direction
* **TimeBodyGyroscope-Mean()-X**: Average of Mean Value time Body Gyro in X direction
* **TimeBodyGyroscope-Mean()-Y**: Average of Mean Value time Body Gyro in Y direction
* **TimeBodyGyroscope-Mean()-Z**: Average of Mean Value time Body Gyro in Z direction
* **TimeBodyGyroscope-StdDev()-X**: Average of Sandard deviation time Body Gyro in X direction
* **TimeBodyGyroscope-StdDev()-Y**: Average of Sandard deviation time Body Gyro in Y direction
* **TimeBodyGyroscope-StdDev()-Z**: Average of Sandard deviation time Body Gyro in Z direction
* **TimeBodyGyroscopeJerk-Mean()-X**: Average of Mean Value time Body Gyro Jerk signal in X direction
* **TimeBodyGyroscopeJerk-Mean()-Y**: Average of Mean Value time Body Gyro Jerk signal in Y direction
* **TimeBodyGyroscopeJerk-Mean()-Z**: Average of Mean Value time Body Gyro Jerk signal in Z direction
* **TimeBodyGyroscopeJerk-StdDev()-X**: Average of Standard deviation time Body Gyro Jerk signal in X direction
* **TimeBodyGyroscopeJerk-StdDev()-Y**: Average of Standard deviation time Body Gyro Jerk signal in X direction
* **TimeBodyGyroscopeJerk-StdDev()-Z**: Average of Standard deviation time Body Gyro Jerk signal in X direction
* **TimeBodyAccelerometerMagnitude-Mean()**: Average of Mean Value time Body Accelration magnitude
* **TimeBodyAccelerometerMagnitude-StdDev()**: Average of Standard deviation time Body Acceleration magnitude
* **TimeGravityAccelerometerMagnitude-Mean()**: Average of Mean Value time Gravity Acceleration magnitude
* **TimeGravityAccelerometerMagnitude-StdDev()**: Average of Standard deviation time Gravity Acceleration magnitude
* **TimeBodyAccelerometerJerkMagnitude-Mean()**: Average of Mean Value time Body Acceleration jerk magnitude
* **TimeBodyAccelerometerJerkMagnitude-StdDev()**: Average of Standard deviation time Body Acceleration jerk magnitude
* **TimeBodyGyroscopeMagnitude-Mean()**: Average of Mean Value time Body Gyro magnitude
* **TimeBodyGyroscopeMagnitude-StdDev()**: Average of Standard deviation time Body Gyro magnitude
* **TimeBodyGyroscopeJerkMagnitude-Mean()**: Average of Mean Value time Body Gyro Jerk magnitude
* **TimeBodyGyroscopeJerkMagnitude-StdDev()**: Average of Standard deviation time Body Gyro Jerk magnitude
* **FrequencyBodyAccelerometer-Mean()-X**: Average of Mean Value frequency Body Acceleration in X direction
* **FrequencyBodyAccelerometer-Mean()-Y**: Average of Mean Value frequency Body Acceleration in Y direction
* **FrequencyBodyAccelerometer-Mean()-Z**: Average of Mean Value frequency Body Acceleration in Z direction
* **FrequencyBodyAccelerometer-StdDev()-X**: Average of Standard deviation frequency Body Accelration in X direction
* **FrequencyBodyAccelerometer-StdDev()-Y**: Average of Standard deviation frequency Body Accelration in Y direction
* **FrequencyBodyAccelerometer-StdDev()-Z**: Average of Standard deviation frequency Body Accelration in Z direction
* **FrequencyBodyAccelerometer-MeanFreq()-X**: Average of Mean Value frequency Body Accelration in X direction
* **FrequencyBodyAccelerometer-MeanFreq()-Y**: Average of Mean Value frequency Body Accelration in Y direction
* **FrequencyBodyAccelerometer-MeanFreq()-Z**: Average of Mean Value frequency Body Accelration in Z direction
* **FrequencyBodyAccelerometerJerk-Mean()-X**: Average of Mean frequency Body Accelration Jerk in X direction
* **FrequencyBodyAccelerometerJerk-Mean()-Y**: Average of Mean frequency Body Accelration Jerk in Y direction
* **FrequencyBodyAccelerometerJerk-Mean()-Z**: Average of Mean frequency Body Accelration Jerk in Z direction
* **FrequencyBodyAccelerometerJerk-StdDev()-X**: Average of Standard deviation frequency Body Accelration Jerk in X direction
* **FrequencyBodyAccelerometerJerk-StdDev()-Y**: Average of Standard deviation frequency Body Accelration Jerk in Y direction
* **FrequencyBodyAccelerometerJerk-StdDev()-Z**: Average of Standard deviation frequency Body Accelration Jerk in Z direction
* **FrequencyBodyAccelerometerJerk-MeanFreq()-X**: Average of Mean frequency Body Accelration Jerk in X
* **FrequencyBodyAccelerometerJerk-MeanFreq()-Y**: Average of Mean frequency Body Accelration Jerk in Y
* **FrequencyBodyAccelerometerJerk-MeanFreq()-Z**: Average of Mean frequency Body Accelration Jerk in Z
* **FrequencyBodyGyroscope-Mean()-X**: Average Mean Frequency Body Gyroscope in X
* **FrequencyBodyGyroscope-Mean()-Y**: Average Mean Frequency Body Gyroscope in Y
* **FrequencyBodyGyroscope-Mean()-Z**: Average Mean Frequency Body Gyroscope in Z
* **FrequencyBodyGyroscope-StdDev()-X**: Average Standard Deviation frequency Body in X
* **FrequencyBodyGyroscope-StdDev()-Y**: Average Standard Deviation frequency Body in Y
* **FrequencyBodyGyroscope-StdDev()-Z**: Average Standard Deviation frequency Body in Z
* **FrequencyBodyGyroscope-MeanFreq()-X**: Average Frequency Mean body Gyroscope in X
* **FrequencyBodyGyroscope-MeanFreq()-Y**: Average Frequency Mean body Gyroscope in Y
* **FrequencyBodyGyroscope-MeanFreq()-Z**: Average Frequency Mean body Gyroscope in Z
* **FrequencyBodyAccelerometerMagnitude-Mean()**: Average Mean Magnitude Frequency Body Accelerometer
* **FrequencyBodyAccelerometerMagnitude-StdDev()**: Average Standard Deviation Magnitude Frequency Body Accelerometer
* **FrequencyBodyAccelerometerMagnitude-MeanFreq()**: Average Frequency Mean Magnitude Frequency Body Accelerometer
* **FrequencyBodyAccelerometerJerkMagnitude-Mean()**: Average Mean Jerk Magnitude Frequency Body Accelerometer
* **FrequencyBodyAccelerometerJerkMagnitude-StdDev()**: Average Standard Deviation Jerk Magnitude Frequency Body Accelerometer
* **FrequencyBodyAccelerometerJerkMagnitude-MeanFreq()**: Average Frequency Mean Jerk Magnitude Frequency Body Accelerometer
* **FrequencyBodyGyroscopeMagnitude-Mean()**: Average of Mean Value frequency Body Gyro magnitude
* **FrequencyBodyGyroscopeMagnitude-StdDev()**: Average of Standard Deviation Value frequency Body Gyro magnitude
* **FrequencyBodyGyroscopeMagnitude-MeanFreq()**: Average of Mean Frequency Value frequency Body Gyro magnitude
* **FrequencyBodyGyroscopeJerkMagnitude-Mean()**: Average of Mean Value frequency Body Gyro jerk magnitude
* **FrequencyBodyGyroscopeJerkMagnitude-StdDev()**: Average of Standard Deviation Value frequency Body Gyro jerk magnitude
* **FrequencyBodyGyroscopeJerkMagnitude-MeanFreq()**: Average of Mean Frequency Value frequency Body Gyro jerk magnitude
* **Angle(tBodyAccelerometerMean,Gravity)**: Average Angle Accelerometer Mean Gravity
* **Angle(tBodyAccelerometerJerkMean),GravityMean)**: Average Angle Accelerometer Mean Jerk Gravity Mean
* **Angle(tBodyGyroscopeMean,GravityMean)**: Average Angle Gyroscope Mean Gravity Mean
* **Angle(tBodyGyroscopeJerkMean,GravityMean)**: Average Angle Gyroscope Mean Gravity
* **Angle(X,GravityMean)**: Average Angle Gravity Mean in X
* **Angle(Y,GravityMean)**: Average Angle Gravity Mean in Y
* **Angle(Z,GravityMean)**: Average Angle Gravity Mean in Z


