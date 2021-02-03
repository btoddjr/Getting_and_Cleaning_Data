# Getting and Cleaning Data
Peer-graded Assignment: Getting and Cleaning Data Course Project

## Repository Files
- run_analysis.R - Script that gets and cleans the data
- tidydata.txt - file containing the tidy data after processing - output from run_analysis.R
- CodeBook.md - Contains a code book that describes the variables, the data, and transformations performed

## Project Description

The purpose of this project is to demonstrate the collection and cleaning of a data set. The goal is to prepare tidy data that can be used for later analysis.  

Data for the project are located at:  

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

The R script called run_analysis.R does the following:  

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
