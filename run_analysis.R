library(dplyr)

filename <- "smartphonedata.zip"

# if the data file does not exist, download the file
if (!file.exists(filename)){
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileURL, filename, method="curl")
}

# if the unzipped folder does not exist, unzip the file
if (!file.exists("UCI HAR Dataset")) { 
    unzip(filename) 
}

# read the data sets from files into data frames

# read base-level data sets
activitylabels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("label", "activity"))
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("index", "feature"))

# read train data sets
subjecttrain <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$feature)
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "label")

# reaad test data sets
subjecttest <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
xtest <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$feature)
ytest <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "label")

# merge the the training and the test sets to create one data set
mergeddataset <- cbind(rbind(subjecttrain, subjecttest), rbind(ytrain, ytest), rbind(xtrain, xtest))

# extract only the measurements on the mean and standard deviation for each measurement
extracteddataset <- mergeddataset %>%
    select(subject, label, contains("mean"), contains("std"))


# set descriptive activity names to name the activities in the data set
extracteddataset$label <- activitylabels[extracteddataset$label, 2]


# label the data set with descriptive variable names
names(extracteddataset)[2] = "activity"
names(extracteddataset) <- gsub("^t", "Time", names(extracteddataset))
names(extracteddataset) <- gsub("^f", "Freq", names(extracteddataset))
names(extracteddataset) <- gsub("tBody", ".TimeBody", names(extracteddataset))
names(extracteddataset) <- gsub("BodyBody", "Body", names(extracteddataset))
names(extracteddataset) <- gsub("mean", "Mean", names(extracteddataset))
names(extracteddataset) <- gsub("std", "STD", names(extracteddataset))
names(extracteddataset) <- gsub("angle", "Angle", names(extracteddataset))
names(extracteddataset) <- gsub("gravity", "Gravity", names(extracteddataset))
names(extracteddataset) <- gsub("[[:punct:]]", "", names(extracteddataset))

# create a second, independent tidy data set with the average of each variable for each activity and each subject
tidydataset <- extracteddataset %>% 
    group_by(activity, subject) %>% 
    summarize_all(funs(mean))

# write tidydataset to a file
write.table(tidydataset, "tidydata.txt", row.names = FALSE)
