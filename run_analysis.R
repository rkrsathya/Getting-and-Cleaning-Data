## This file collects the train and test dataset, pre process it and transform it to tidy data set with suitabe measurements


# Load the train data from file
trainset <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/x_train.txt")

# Load the train labels from file
trainsetlbl <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")

# Load the test data from file
testset <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/x_test.txt")

# Load the test labels from file
testsetlbl <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")

# Load the features from file
features <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt")

# Load the activity labels from file
activitylbl <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")

names(activitylbl) <- c("id","activity")

# Extract the column names with mean and std from features table
featureswithmeanandstd <- grep("mean|std",features$V2,value = TRUE)


trainsetlblwithname<- activitylbl[match(trainsetlbl$V1,activitylbl$id),2,drop=F]

colnames(subject_train)[1] <- c("subject")

# Add column names to the training set
names(trainset) <- features$V2

# Bind the train data with activity label and subject
trainingset <- cbind(trainset,trainsetlblwithname$activity,subject_train$subject)

# Add column names to the test set
names(testset) <- features$V2

# Bind the test data with activity and subject
testingset <- cbind(testset,testsetlblwithname$activity,subject_test$V1)

# Merge the train and test data
totalset <- rbind(trainingset,testingset)

# Extract dataset with only measurements from mean and std
extractedmeansdset <- totalset[,c(featureswithmeanandstd,"activity","subject")]

extractedmeansdset <- data.table(extractedmeansdset)

# Create a tidy dataset with average of each measurement for each activity and subject
tidySet <- extractedmeansdset[,lapply(.SD,mean),by="activity,subject"]

write.table(tidySet,"tidyset.txt",sep = "\t")
