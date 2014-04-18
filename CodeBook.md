Getting And Cleaning Data Code Book
===================================

This code book describes the variables, the data, transformations and work performed to clean up the Human Activity Recognition Using Smartphones Data Set.

The current repository contains the code to perform the programming assigment of the Getting And Cleaning Data course given at Coursera. Te assignment was to create one R script called run_analysis.R that does the following.

    Merges the training and the test sets to create one data set.
    Extracts only the measurements on the mean and standard deviation for each measurement.
    Uses descriptive activity names to name the activities in the data set
    Appropriately labels the data set with descriptive activity names.
    Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

A full description of the data set is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data used for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Before starting the data process, the code assumes the existence of the following files from the dataset at the working path:

    X_train.txt,
    X_test.txt,
    y_train.txt,
    y_test.txt and
    activity_labels.txt

##Source:

    Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
    Smartlab - Non Linear Complex Systems Laboratory
    DITEN - UniversitÃ  degli Studi di Genova, Genoa I-16145, Italy.
    activityrecognition '@' smartlab.ws
    www.smartlab.ws


##Data Set Information (Taken from the UCI repository):

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.


The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
    

##Attribute Information (Taken from the UCI repository):

For each record in the dataset it is provided:

    - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
    - Triaxial Angular velocity from the gyroscope.
    - A 561-feature vector with time and frequency domain variables.
    - Its activity label.
    - An identifier of the subject who carried out the experiment. 

##Cleanup Data Activities

Load data:
This first step loads the raw data from the X_train.txt into the variable "train". The same for the data in the file "X_test.txt" with is loaded to the "test variable"

Merge raw data:
In this step both the data in the variables "train" and "test" are binded by row.

Calculate mean and standard deviation:
In this step the standard deviation and the mean for each of the measurements in the data is calculated. Note that for the homework each of the variables in the raw data set is considered one measurement.

Load activity names:
In this step the names of the activities are loaded from the file activity_labels.txt to later perfom appropriate labeling of activities with this "names" vector

Load activity column:
In this step the id of the activities measured are loaded into the "activity" vector variable.

Label data with descriptive activity names:
In this step the activity ids of activities are merged with the appropriate activity name in the "names" vector variable. The result is stored as the "y" vector variable.

Create a tidy data set:
The final step is to use the raw data and the "y" to generate a tidy dataset stored in the variable "tidy". The resulting data set stores the average of each variable for each activity and each subject. The data is organized as follows: each column represents an activity and each row a variable.
