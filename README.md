# Getting and Cleaning Data

## Project Requirements

 Create one R script called run_analysis.R that does the following.

    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement.
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names.
    5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and      each subject.

## Execution steps

Download the data source zip file and unzip with the foldername as "getdata_projectfiles_UCI HAR Dataset" in working folder.
Run run_analysis.R file in working folder.
Creates the tidyset.txt in working folder.

## Process steps

Load the train, test data, activity label and subject as data table
load the feature names for the train and test data
Populate column names for train and test data
Bind the train and test data with columns activity labels and subject
Merge train and test data
Extract the data with columns of feature measurements having mean and SD
Average the measurements for each activity and subject and create a tidy data set.

## Dependencies

Data.Table package
Dplyr package





