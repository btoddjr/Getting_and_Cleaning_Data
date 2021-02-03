# Data used in run_analysis.R
  
activitylabels - types of sctivities performed  
features - listing of measured features  
subjecttrain, xtrain, ytrain - train dataset dataframes  
subjecttest, xtest, ytest - test dataset dataframes  
mergeddataset - dataframe containing the merged data of subjecttrain, subjecttest, xtrain, xtest, ytrain, ytest  
extracteddataset - subset of mergeddataset containing only mean and standard deviation data  
tidydataset - extracteddataset grouped by activity and subject and summarizes based on those variables  

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