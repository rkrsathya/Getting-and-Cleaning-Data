# Getting and Cleaning Data

## Project Requirements

 Create one R script called run_analysis.R that does the following.

    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement.
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names.
    5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and      each subject.

## Execution steps

   1. Download the data source zip file and unzip with the foldername as "getdata_projectfiles_UCI HAR Dataset" in working folder.
   2. Run run_analysis.R file in working folder.
   3. Creates the tidyset.txt in working folder.

## Process steps

   1. Load the train, test data, activity label and subject as data table
   2. Load the feature names for the train and test data
   3. Populate column names for train and test data
   4. Bind the train and test data with columns activity labels and subject
   5. Merge train and test data
   6. Extract the data with columns of feature measurements having mean and SD
   7. Average the measurements for each activity and subject and create a tidy data set.

## Dependencies

* Data.Table package
* Dplyr package





