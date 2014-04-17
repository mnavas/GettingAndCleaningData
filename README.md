GettingAndCleaningData
======================

Getting And Cleaning Data

The current repository contains the code to perform the programming assigment of the Getting And Cleaning Data course given at Coursera. Te assignment was to create one R script called run_analysis.R that does the following. 

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive activity names. 
- Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

A full description of the data set is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


Here are the data used for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


The current code assumes the existence of the following files from the dataset at the working path:

- X_train.txt, 
- X_test.txt, 
- y_train.txt, 
- y_test.txt and 
- activity_labels.txt
