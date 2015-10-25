library(data.table)
library(dplyr)

# File locations
featfile <- "./UCI HAR Dataset/features.txt"
activfile <- "./UCI HAR Dataset/activity_labels.txt"
sbjtrainfile <- "./UCI HAR Dataset/train/subject_train.txt"
activtrainfile <- "./UCI HAR Dataset/train/y_train.txt"
feattrainfile <- "./UCI HAR Dataset/train/X_train.txt"
sbjtestfile <- "./UCI HAR Dataset/test/subject_test.txt"
activtestfile <- "./UCI HAR Dataset/test/y_test.txt"
feattestfile <- "./UCI HAR Dataset/test/X_test.txt"

# Read metadata
featuresMeta <- read.table(featfile, head=FALSE)
names(featuresMeta) <- c('feature_id', 'feature_name')
activitiesMeta <- read.table(activfile, head=FALSE)
names(activitiesMeta) <- c('activity_id', 'activity_name')

# Read training and test files
subjectTraining <- read.table(sbjtrainfile, header = FALSE)
activityTraining <- read.table(activtrainfile, header = FALSE)
featuresTraining <- read.table(feattrainfile, header = FALSE)
subjectTesting <- read.table(sbjtestfile, header = FALSE)
activityTesting <- read.table(activtestfile, header = FALSE)
featuresTesting <- read.table(feattestfile, header = FALSE)

###### 1. MERGE TRAINING AND TEST SETS #########
subject <- rbind(subjectTesting, subjectTraining)
activity <- rbind(activityTesting, activityTraining)
features <- rbind(featuresTesting, featuresTraining)
# set names
names(subject) <- c("subject")
names(activity) <- c("activity")
names(features) <- featuresMeta$feature_name

# Merge everything into one data set
alldata <- cbind(activity, subject, features)

# Extract mean and stddev
meanstdfeatures <- grepl("mean|std|activity|subject", names(alldata), ignore.case = TRUE)
meanstddata <- alldata[,meanstdfeatures]

# Use descriptive activity names
meanstddata[, 1] <- activitiesMeta[meanstddata[,1], 2]

# Label the data using descriptive variable names
names(meanstddata) <- gsub('Acc', 'Accelerometer', names(meanstddata))
names(meanstddata) <- gsub('^t', 'Time', names(meanstddata))
names(meanstddata) <- gsub('^f', 'Frequency', names(meanstddata))
names(meanstddata) <- gsub('Gyro', 'Gyroscope', names(meanstddata))
names(meanstddata) <- gsub('Mag', 'Magnitude', names(meanstddata))
names(meanstddata) <- gsub('BodyBody', 'Body', names(meanstddata))
names(meanstddata) <- gsub('-std()', '-StdDev', names(meanstddata), ignore.case = TRUE)
names(meanstddata) <- gsub('-freq()', '-Frequency', names(meanstddata), ignore.case = TRUE)
names(meanstddata) <- gsub('-mean()', '-Mean', names(meanstddata), ignore.case = TRUE)
names(meanstddata) <- gsub('angle', 'Angle', names(meanstddata))
names(meanstddata) <- gsub('gravity', 'Gravity', names(meanstddata))

# Create a second independent tidy data set with the average of each variable
aux <- meanstddata[, 3:dim(meanstddata)[2]]
avgdata <- aggregate(aux, by=list(meanstddata$subject, meanstddata$activity), FUN = mean, na.rm=TRUE)
names(avgdata)[1] <- "subject"
names(avgdata)[2] <- "activity"
avgdata <- avgdata[order(avgdata$subject, avgdata$activity),]

write.table(avgdata, file = "avgdata.txt", row.names = FALSE)
