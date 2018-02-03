### Course Project,  run_analysis.R

# 1. COLLECT THE DATA SET
# 1.1 Download and unzip the data file, if it does not yet exists in the current working directory.
if(!file.exists("UCI HAR Dataset")){ 
sourceUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(sourceUrl ,destfile="Dataset.zip")
unzip("Dataset.zip")}

# 2. WORK WITH THE DATA SET
# 2.1 Reading files.
# 2.1.1 Reading training files.
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

# 2.1.2 Reading testing files.
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# 2.2 Merges the training and the test sets to create one merged data set.
mergedData <- rbind(cbind(y_train,subject_train,x_train),cbind(y_test,subject_test,x_test))

# 2.3 Extracts only the measurements on the mean and standard deviation for each measurement.
# 2.3.1 Read the features file.
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

# 2.3.2 Rename the column names of the merged data set.
colnames(mergedData) <- c("activity","subject",features[, 2])

# 2.3.3 Determine the remaining columns of the merged data set, including only the measurements on mean and standard deviation.
remainingColumns <- grepl("activity|subject|mean|std", colnames(mergedData))

# 2.3.4 Remove unwanted columns.
mergedData <- mergedData[, remainingColumns]

# 2.4 Uses descriptive activity names to name the activities in the merged data set
# 2.4.1 Replace activity ids with activity labels/descriptions
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])  
mergedData$activity <- factor(mergedData$activity,levels = activityLabels [, 1],labels = activityLabels[, 2])

# 2.5 Appropriately labels the data set with descriptive variable names.
# 2.5.1 Get the column names of the merged data set.
mergedDataCols <- colnames(mergedData)

# 2.5.2 Remove special characters from column names.
mergedDataCols <- gsub("[\\(\\)-]", "",mergedDataCols)

# 2.5.3 Replace abbreviations with full descriptions in column names.
mergedDataCols <- gsub("^t","timeDomain",mergedDataCols)
mergedDataCols <- gsub("^f","frequencyDomain",mergedDataCols)
mergedDataCols <- gsub("Acc","Accelerometer",mergedDataCols)
mergedDataCols <- gsub("Gyro","Gyroscope",mergedDataCols)
mergedDataCols <- gsub("Mag","Magnitude",mergedDataCols)
mergedDataCols <- gsub("Freq","Frequency",mergedDataCols)
mergedDataCols <- gsub("mean","Mean",mergedDataCols)
mergedDataCols <- gsub("std","StandardDeviation",mergedDataCols)

# 2.5.4 Remove redundant words from column names.
mergedDataCols <- gsub("BodyBody", "Body", mergedDataCols)

# 2.5.5 Apply the new column names to the merged data set.
colnames(mergedData) <- mergedDataCols 

# 3. CLEAN THE DATA SET
# 3.1 Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# 3.1.1 Group the merged data set rows by activity and subject and for each unique activity-subject, compute the average (mean) of each variable.  
activitySubjMeans <- mergedData %>% 
group_by(activity,subject) %>%
summarise_each(funs(mean))

# 3.1.2 Create a new file "tidy_data.txt".
write.table(activitySubjMeans,"tidy_data.txt",row.names = FALSE)
