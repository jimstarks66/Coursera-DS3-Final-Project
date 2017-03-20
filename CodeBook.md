The data in the tidyData.csv file consists of 180 observations, each with 68 variables as defined below.  

The data was gathered from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
and processed with the accompanying run_analysis.R file.

There are six activity types for 30 individual test subjects.  
The variables are as follows:  
*Subject                            Subjects in the experiment, numbered 1-30  
*Activity                           Activities each subject engaged in: walking, walkingupstairs, walkingdownstairs, sitting, standing, lying  
*meanTimeBodyAccMeanX               Mean of: mean time of the Body Acceleration measurement along the X axis  
*meanTimeBodyAccMeanY               Mean of: mean time of the Body Acceleration measurement along the Y axis  
*meanTimeBodyAccMeanZ               Mean of: mean time of the Body Acceleration measurement along the Z axis  
*meanTimeBodyAccStdX                Mean of: standard deviation time of the Body Acceleration measurement along the X axis  
*meanTimeBodyAccStdY                Mean of: standard deviation time of the Body Acceleration measurement along the Y axis  
*meanTimeBodyAccStdZ                Mean of: standard deviation time of the Body Acceleration measurement along the Z axis  
*meanTimeGravityAccMeanX            Mean of: mean time of the Gravity Acceleration measurement along the X axis  
*meanTimeGravityAccMeanY            Mean of: mean time of the Gravity Acceleration measurement along the Y axis  
*meanTimeGravityAccMeanZ            Mean of: mean time of the Gravity Acceleration measurement along the Z axis  
*meanTimeGravityAccStdX             Mean of: standard deviation time of the Gravity Acceleration measurement along the X axis  
*meanTimeGravityAccStdY             Mean of: standard deviation time of the Gravity Acceleration measurement along the Y axis  
*meanTimeGravityAccStdZ             Mean of: standard deviation time of the Gravity Acceleration measurement along the Z axis  
*meanTimeBodyAccJerkMeanX           Mean of: mean time of the Body Acceleration Jerk measurement along the X axis  
*meanTimeBodyAccJerkMeanY           Mean of: mean time of the Body Acceleration Jerk measurement along the Y axis  
*meanTimeBodyAccJerkMeanZ           Mean of: mean time of the Body Acceleration Jerk measurement along the Z axis  
*meanTimeBodyAccJerkStdX            Mean of: standard deviation time of the Body Acceleration Jerk measurement along the X axis  
*meanTimeBodyAccJerkStdY            Mean of: standard deviation time of the Body Acceleration Jerk measurement along the Y axis  
*meanTimeBodyAccJerkStdZ            Mean of: standard deviation time of the Body Acceleration Jerk measurement along the Z axis  
*meanTimeBodyGyroMeanX              Mean of: mean time of the Body Gyro measurement along the X axis  
*meanTimeBodyGyroMeanY              Mean of: mean time of the Body Gyro measurement along the Y axis  
*meanTimeBodyGyroMeanZ              Mean of: mean time of the Body Gyro measurement along the Z axis  
*meanTimeBodyGyroStdX               Mean of: standard deviation time of the Body Gyro measurement along the X axis  
*meanTimeBodyGyroStdY               Mean of: standard deviation time of the Body Gyro measurement along the Y axis  
*meanTimeBodyGyroStdZ               Mean of: standard deviation time of the Body Gyro measurement along the Z axis  
*meanTimeBodyGyroJerkMeanX          Mean of: mean time of the Body Gyro Jerk measurement along the X axis  
*meanTimeBodyGyroJerkMeanY          Mean of: mean time of the Body Gyro Jerk measurement along the Y axis  
*meanTimeBodyGyroJerkMeanZ          Mean of: mean time of the Body Gyro Jerk measurement along the Z axis  
*meanTimeBodyGyroJerkStdX           Mean of: standard deviation time of the Body Gyro Jerk measurement along the X axis  
*meanTimeBodyGyroJerkStdY           Mean of: standard deviation time of the Body Gyro Jerk measurement along the Y axis  
*meanTimeBodyGyroJerkStdZ           Mean of: standard deviation time of the Body Gyro Jerk measurement along the Z axis  
*meanTimeBodyAccMagMean             Mean of: mean time of the Body Acceleration Magnitude  
*meanTimeBodyAccMagStd              Mean of: standard deviation time of the Body Acceleration Magnitude  
*meanTimeGravityAccMagMean          Mean of: mean time of the Gravity Acceleration Magnitude  
*meanTimeGravityAccMagStd           Mean of: standard deviation time of the Gravity Acceleration Magnitude  
*meanTimeBodyAccJerkMagMean         Mean of: mean time of the Body Acceleration Jerk Magnitude  
*meanTimeBodyAccJerkMagStd          Mean of: standard deviation time of the Body Acceleration Jerk Magnitude  
*meanTimeBodyGyroMagMean            Mean of: mean time of the Body Gyro Magnitude  
*meanTimeBodyGyroMagStd             Mean of: standard deviation time of the Body Gyro Magnitude  
*meanTimeBodyGyroJerkMagMean        Mean of: mean time of the Body Gyro Jerk Magnitude  
*meanTimeBodyGyroJerkMagStd         Mean of: standard deviation time of the Body Gyro Jerk Magnitude  
*meanFreqBodyAccMeanX               Mean of: mean frequency of the Body Acceleration measurement along the X axis  
*meanFreqBodyAccMeanY               Mean of: mean frequency of the Body Acceleration measurement along the Y axis  
*meanFreqBodyAccMeanZ               Mean of: mean frequency of the Body Acceleration measurement along the Z axis  
*meanFreqBodyAccStdX                Mean of: standard deviation frequency of the Body Acceleration measurement along the X axis  
*meanFreqBodyAccStdY                Mean of: standard deviation frequency of the Body Acceleration measurement along the Y axis  
*meanFreqBodyAccStdZ                Mean of: standard deviation frequency of the Body Acceleration measurement along the Z axis  
*meanFreqBodyAccJerkMeanX           Mean of: mean frequency of the Body Acceleration Jerk measurement along the X axis  
*meanFreqBodyAccJerkMeanY           Mean of: mean frequency of the Body Acceleration Jerk measurement along the Y axis  
*meanFreqBodyAccJerkMeanZ           Mean of: mean frequency of the Body Acceleration Jerk measurement along the Z axis  
*meanFreqBodyAccJerkStdX            Mean of: standard deviation frequency of the Body Acceleration Jerk measurement along the X axis  
*meanFreqBodyAccJerkStdY            Mean of: standard deviation frequency of the Body Acceleration Jerk measurement along the Y axis  
*meanFreqBodyAccJerkStdZ            Mean of: standard deviation frequency of the Body Acceleration Jerk measurement along the Z axis  
*meanFreqBodyGyroMeanX              Mean of: mean frequency of the Body Gyro measurement along the X axis  
*meanFreqBodyGyroMeanY              Mean of: mean frequency of the Body Gyro measurement along the Y axis  
*meanFreqBodyGyroMeanZ              Mean of: mean frequency of the Body Gyro measurement along the Z axis  
*meanFreqBodyGyroStdX               Mean of: standard deviation frequency of the Body Gyro measurement along the X axis  
*meanFreqBodyGyroStdY               Mean of: standard deviation frequency of the Body Gyro measurement along the Y axis  
*meanFreqBodyGyroStdZ               Mean of: standard deviation frequency of the Body Gyro measurement along the Z axis  
*meanFreqBodyAccMagMean             Mean of: mean frequency of the Body Acceleration Magnitude  
*meanFreqBodyAccMagStd              Mean of: standard deviation frequency of the Body Acceleration Magnitude  
*meanFreqBodyBodyAccJerkMagMean     Mean of: mean frequency of the Gravity Acceleration Magnitude  
*meanFreqBodyBodyAccJerkMagStd      Mean of: standard deviation frequency of the Gravity Acceleration Magnitude  
*meanFreqBodyBodyGyroMagMean        Mean of: mean frequency of the Body Gyro Magnitude  
*meanFreqBodyBodyGyroMagStd         Mean of: standard deviation frequency of the Body Gyro Magnitude  
*meanFreqBodyBodyGyroJerkMagMean    Mean of: mean frequency of the Body Gyro Jerk Magnitude  
*meanFreqBodyBodyGyroJerkMagStd     Mean of: standard deviation frequency of the Body Gyro Jerk Magnitude  
