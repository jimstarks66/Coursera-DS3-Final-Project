library(dplyr)

# Reading in Test Data

setwd("C:/Users/Jim/Documents/CourseraDS3/UCI HAR Dataset")
data_test <- read.table("./test/X_test.txt", header=F)
label_test <- read.table("./test/y_test.txt", header = F)
subject_test <- read.table("./test/subject_test.txt", header = F)

#Reading in Training Data

data_train <- read.table("./train/X_train.txt", header=F)
label_train <- read.table("./train/y_train.txt", header = F)
subject_train <- read.table("./train/subject_train.txt", header = F)

#Merges the training and the test sets to create one data set

test <- cbind(subject_test, label_test, data_test)
train <- cbind(subject_train, label_train, data_train)
alldata <- rbind(test, train)

#Cleaning Up the Stray Partial Data Tables

rm(data_test, data_train, label_test, label_train,
   subject_test, subject_train, test, train)

#Extracts only the measurements on the mean and standard deviation for each measurement

varlabels <- read.table("features.txt", header=F)
names(alldata)[1:2] <- c("Subject", "Activity")
names(alldata)[3:563] <- as.character(varlabels[,2])

keepvars <- grep("mean()[^F]|std()",names(alldata))
keepdata <- alldata[,c(1,2,keepvars)]
rm(alldata,keepvars,varlabels)

#Uses descriptive activity names to name the activities in the data set
keepdata$Activity <- as.factor(keepdata$Activity)
levels(keepdata$Activity) <- c("walking", "walkingupstairs",
                               "walkingdownstairs", "sitting",
                               "standing", "laying")

#Appropriately labels the data set with descriptive variable names
names(keepdata)<-sub("^f","freq",names(keepdata))
names(keepdata)<-sub("^t","time",names(keepdata))
names(keepdata)<-sub("-mean()","Mean",names(keepdata), fixed=TRUE)
names(keepdata)<-sub("-std()","Std",names(keepdata), fixed=TRUE)
names(keepdata)<-sub("-X","X",names(keepdata), fixed=TRUE)
names(keepdata)<-sub("-Y","Y",names(keepdata), fixed=TRUE)
names(keepdata)<-sub("-Z","Z",names(keepdata), fixed=TRUE)

#creates a second, independent tidy data set with the average of each variable for each activity and each subject
secondData<-keepdata %>%group_by(Subject, Activity) %>% summarize(
  meanTimeBodyAccMeanX=mean(timeBodyAccMeanX),
  meanTimeBodyAccMeanY=mean(timeBodyAccMeanY),
  meanTimeBodyAccMeanZ=mean(timeBodyAccMeanZ),
  meanTimeBodyAccStdX=mean(timeBodyAccStdX),
  meanTimeBodyAccStdY=mean(timeBodyAccStdY),
  meanTimeBodyAccStdZ=mean(timeBodyAccStdZ),
  meanTimeGravityAccMeanX=mean(timeGravityAccMeanX),
  meanTimeGravityAccMeanY=mean(timeGravityAccMeanY),
  meanTimeGravityAccMeanZ=mean(timeGravityAccMeanZ),
  meanTimeGravityAccStdX=mean(timeGravityAccStdX),
  meanTimeGravityAccStdY=mean(timeGravityAccStdY),
  meanTimeGravityAccStdZ=mean(timeGravityAccStdZ),
  meanTimeBodyAccJerkMeanX=mean(timeBodyAccJerkMeanX),
  meanTimeBodyAccJerkMeanY=mean(timeBodyAccJerkMeanY),
  meanTimeBodyAccJerkMeanZ=mean(timeBodyAccJerkMeanZ),
  meanTimeBodyAccJerkStdX=mean(timeBodyAccJerkStdX),
  meanTimeBodyAccJerkStdY=mean(timeBodyAccJerkStdY),
  meanTimeBodyAccJerkStdZ=mean(timeBodyAccJerkStdZ),
  meanTimeBodyGyroMeanX=mean(timeBodyGyroMeanX),
  meanTimeBodyGyroMeanY=mean(timeBodyGyroMeanY),
  meanTimeBodyGyroMeanZ=mean(timeBodyGyroMeanZ),
  meanTimeBodyGyroStdX=mean(timeBodyGyroStdX),
  meanTimeBodyGyroStdY=mean(timeBodyGyroStdY),
  meanTimeBodyGyroStdZ=mean(timeBodyGyroStdZ),
  meanTimeBodyGyroJerkMeanX=mean(timeBodyGyroJerkMeanX),
  meanTimeBodyGyroJerkMeanY=mean(timeBodyGyroJerkMeanY),
  meanTimeBodyGyroJerkMeanZ=mean(timeBodyGyroJerkMeanZ),
  meanTimeBodyGyroJerkStdX=mean(timeBodyGyroJerkStdX),
  meanTimeBodyGyroJerkStdY=mean(timeBodyGyroJerkStdY),
  meanTimeBodyGyroJerkStdZ=mean(timeBodyGyroJerkStdZ),
  meanTimeBodyAccMagMean=mean(timeBodyAccMagMean),
  meanTimeBodyAccMagStd=mean(timeBodyAccMagStd),
  meanTimeGravityAccMagMean=mean(timeGravityAccMagMean),
  meanTimeGravityAccMagStd=mean(timeGravityAccMagStd),
  meanTimeBodyAccJerkMagMean=mean(timeBodyAccJerkMagMean),
  meanTimeBodyAccJerkMagStd=mean(timeBodyAccJerkMagStd),
  meanTimeBodyGyroMagMean=mean(timeBodyGyroMagMean),
  meanTimeBodyGyroMagStd=mean(timeBodyGyroMagStd),
  meanTimeBodyGyroJerkMagMean=mean(timeBodyGyroJerkMagMean),
  meanTimeBodyGyroJerkMagStd=mean(timeBodyGyroJerkMagStd),
  meanFreqBodyAccMeanX=mean(freqBodyAccMeanX),
  meanFreqBodyAccMeanY=mean(freqBodyAccMeanY),
  meanFreqBodyAccMeanZ=mean(freqBodyAccMeanZ),
  meanFreqBodyAccStdX=mean(freqBodyAccStdX),
  meanFreqBodyAccStdY=mean(freqBodyAccStdY),
  meanFreqBodyAccStdZ=mean(freqBodyAccStdZ),
  meanFreqBodyAccJerkMeanX=mean(freqBodyAccJerkMeanX),
  meanFreqBodyAccJerkMeanY=mean(freqBodyAccJerkMeanY),
  meanFreqBodyAccJerkMeanZ=mean(freqBodyAccJerkMeanZ),
  meanFreqBodyAccJerkStdX=mean(freqBodyAccJerkStdX),
  meanFreqBodyAccJerkStdY=mean(freqBodyAccJerkStdY),
  meanFreqBodyAccJerkStdZ=mean(freqBodyAccJerkStdZ),
  meanFreqBodyGyroMeanX=mean(freqBodyGyroMeanX),
  meanFreqBodyGyroMeanY=mean(freqBodyGyroMeanY),
  meanFreqBodyGyroMeanZ=mean(freqBodyGyroMeanZ),
  meanFreqBodyGyroStdX=mean(freqBodyGyroStdX),
  meanFreqBodyGyroStdY=mean(freqBodyGyroStdY),
  meanFreqBodyGyroStdZ=mean(freqBodyGyroStdZ),
  meanFreqBodyAccMagMean=mean(freqBodyAccMagMean),
  meanFreqBodyAccMagStd=mean(freqBodyAccMagStd),
  meanFreqBodyBodyAccJerkMagMean=mean(freqBodyBodyAccJerkMagMean),
  meanFreqBodyBodyAccJerkMagStd=mean(freqBodyBodyAccJerkMagStd),
  meanFreqBodyBodyGyroMagMean=mean(freqBodyBodyGyroMagMean),
  meanFreqBodyBodyGyroMagStd=mean(freqBodyBodyGyroMagStd),
  meanFreqBodyBodyGyroJerkMagMean=mean(freqBodyBodyGyroJerkMagMean),
  meanFreqBodyBodyGyroJerkMagStd=mean(freqBodyBodyGyroJerkMagStd))
