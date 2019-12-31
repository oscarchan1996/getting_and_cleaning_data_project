## Getting and Cleaning Data: Week 4 Project ##

## The script uses data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## And aims to do all of the following:
## 1. Merges the training and the test sets to create on data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set.
## 4. Appropriately labels the data set with descriptive variables names.
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(reshape2)
library(tidyverse)

## Set working directory and download the data to local storage

setwd("H:/Documents/MDA/3_getting_and_cleaning_data/Project")

data_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
data_file <- "UCI HAR Dataset.zip"

if(!file.exists(data_file)) {
  # If the file does not exist already, then we will download the file
  status <- download.file(data_url, data_file, method = "curl")
  if (status != 0) {
    stop("Could not download data")
  }
}

## Unzip the files

unzip(data_file, setTimes = TRUE)

## Read the names of the features and activity labels

features <- read.table("UCI Har Dataset/features.txt", sep = " ", col.names = c("column_number", "feature"))
activity_labels <- read.table("UCI Har Dataset/activity_labels.txt", sep = " ", col.names = c("id", "activity"))

## Extract the features for mean and standard deviations only (Step 2.)

features_wanted <- grep(".*mean[(][)].*|.*std[(][)].*", features$feature)
# Stylistic preference to use "_" as a general separator, so converted here using tidyverse
features[, 2] <- features[, 2] %>% {gsub("-", "_", .)} %>% {gsub("[()]", "", .)} %>% tolower()
features_wanted_names <- features[features_wanted, 2]

## Load the dataset

train <- read.table("UCI HAR Dataset/train/X_train.txt")[features_wanted]
train_activities <- read.table("UCI HAR Dataset/train/Y_train.txt")
train_subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(train_subjects, train_activities, train)

test <- read.table("UCI HAR Dataset/test/X_test.txt")[features_wanted]
test_activities <- read.table("UCI HAR Dataset/test/Y_test.txt")
test_subjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(test_subjects, test_activities, test)

## Merge the datasets together, turn first two columns into factors and add descriptive labels (Step 1., 3. and 4.)

data <- rbind(train, test)
colnames(data) <- c("subject", "activity", features_wanted_names)

data$activity <- factor(data$activity, levels = activity_labels[, 1], labels = activity_labels[, 2])
data$subject <- as.factor(data$subject)

## Melt and cast to obtain tidy data with the means and standard deviations (Step 5.)

melt_data <- melt(data, id = c("subject", "activity"))
recast_data <- dcast(melt_data, subject + activity ~ variable, mean)

## Write the tidy data

write.table(recast_data, "tidy.txt", row.names = FALSE)

## END ##