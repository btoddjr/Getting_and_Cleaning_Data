# Getting and Cleaning Data
Peer-graded Assignment: Getting and Cleaning Data Course Project

## Repository Files
- run_analysis.R - Script that gets and cleans the data
- tidydata.txt - file containing the tidy data after processing - output from run_analysis.R
- CodeBook.md - Contains a code book that describes the variables, the data, and transformations performed

## Project Description

The purpose of this project is to demonstrate the collection and cleaning of a data set. The goal is to prepare tidy data that can be used for later analysis.  

### Data for the project are located at:  

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

### The R script called run_analysis.R does the following:  

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
