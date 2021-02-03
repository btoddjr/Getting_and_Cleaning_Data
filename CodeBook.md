# Data used in run_analysis.R
  
activitylabels - types of sctivities performed  
features - listing of measured features  
subjecttrain, xtrain, ytrain - train dataset dataframes  
subjecttest, xtest, ytest - test dataset dataframes  
mergeddataset - dataframe containing the merged data of subjecttrain, subjecttest, xtrain, xtest, ytrain, ytest  
extracteddataset - subset of mergeddataset containing only mean and standard deviation data  
tidydataset - extracteddataset grouped by activity and subject and summarizes based on those variables  

# Construction of the tidydataset

The script "run_analysis.R" performs the following to get and clean the date contained at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip -

- Downloads the data file if it does not already exist in the working directory
- Unzips the data file if the unzipped directory does not already exist in the working directory
- Loads the activity and feature information into dataframes
- Loads the training and test datasets into dataframes
- Merges the training and test datasets
- Selects only those columns that reflect a mean or standard deviation
- Updates the activity column into descriptive names
- Creates a tidy dataset that consists of the average (mean) value of each variable for each activity and each subject
- The end result is stored in the file tidydata.txt

### Subjects in the tinydataset range in number from 1 - 30

### Activity types in activitylabels are used as descriptive activity names in the tinydataset

1. WALKING  
2. WALKING_UPSTAIRS  
3. WALKING_DOWNSTAIRS  
4. SITTING  
5. STANDING  
6. LAYING  

### Mean and standard deviation measurements in the tidydataset

TimeBodyAccMeanX  
TimeBodyAccMeanY  
TimeBodyAccMeanZ  
TimeGravityAccMeanX  
TimeGravityAccMeanY  
TimeGravityAccMeanZ  
TimeBodyAccJerkMeanX  
TimeBodyAccJerkMeanY  
TimeBodyAccJerkMeanZ  
TimeBodyGyroMeanX  
TimeBodyGyroMeanY  
TimeBodyGyroMeanZ  
TimeBodyGyroJerkMeanX  
TimeBodyGyroJerkMeanY  
TimeBodyGyroJerkMeanZ  
TimeBodyAccMagMean  
TimeGravityAccMagMean  
TimeBodyAccJerkMagMean  
TimeBodyGyroMagMean  
TimeBodyGyroJerkMagMean  
FreqBodyAccMeanX  
FreqBodyAccMeanY  
FreqBodyAccMeanZ  
FreqBodyAccMeanFreqX  
FreqBodyAccMeanFreqY  
FreqBodyAccMeanFreqZ  
FreqBodyAccJerkMeanX  
FreqBodyAccJerkMeanY  
FreqBodyAccJerkMeanZ  
FreqBodyAccJerkMeanFreqX  
FreqBodyAccJerkMeanFreqY  
FreqBodyAccJerkMeanFreqZ  
FreqBodyGyroMeanX  
FreqBodyGyroMeanY  
FreqBodyGyroMeanZ  
FreqBodyGyroMeanFreqX  
FreqBodyGyroMeanFreqY  
FreqBodyGyroMeanFreqZ  
FreqBodyAccMagMean  
FreqBodyAccMagMeanFreq  
FreqBodyAccJerkMagMean  
FreqBodyAccJerkMagMeanFreq  
FreqBodyGyroMagMean  
FreqBodyGyroMagMeanFreq  
FreqBodyGyroJerkMagMean  
FreqBodyGyroJerkMagMeanFreq  
AngleTimeBodyAccMeanGravity  
AngleTimeBodyAccJerkMeanGravityMean  
AngleTimeBodyGyroMeanGravityMean  
AngleTimeBodyGyroJerkMeanGravityMean  
AngleXGravityMean  
AngleYGravityMean  
AngleZGravityMean  
TimeBodyAccSTDX  
TimeBodyAccSTDY  
TimeBodyAccSTDZ  
TimeGravityAccSTDX  
TimeGravityAccSTDY  
TimeGravityAccSTDZ  
TimeBodyAccJerkSTDX  
TimeBodyAccJerkSTDY  
TimeBodyAccJerkSTDZ  
TimeBodyGyroSTDX  
TimeBodyGyroSTDY  
TimeBodyGyroSTDZ  
TimeBodyGyroJerkSTDX  
TimeBodyGyroJerkSTDY  
TimeBodyGyroJerkSTDZ  
TimeBodyAccMagSTD  
TimeGravityAccMagSTD  
TimeBodyAccJerkMagSTD  
TimeBodyGyroMagSTD  
TimeBodyGyroJerkMagSTD  
FreqBodyAccSTDX  
FreqBodyAccSTDY  
FreqBodyAccSTDZ  
FreqBodyAccJerkSTDX  
FreqBodyAccJerkSTDY  
FreqBodyAccJerkSTDZ  
FreqBodyGyroSTDX  
FreqBodyGyroSTDY  
FreqBodyGyroSTDZ  
FreqBodyAccMagSTD  
FreqBodyAccJerkMagSTD  
FreqBodyGyroMagSTD  
FreqBodyGyroJerkMagSTD  