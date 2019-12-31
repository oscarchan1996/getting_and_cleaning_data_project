### Getting and Cleaning Data: Week 4 Project

This is the repository for the course project to the Coursera Getting and Cleaning Data course.

It contains the following:

* README.md: overview file
* run_analysis.R: R script which processes and outputs tidy data
* CodeBook.md: description of the tidy data R script.
* tidy.txt: output tidy data

## Study purpose

The purpose of the R script, `run_analysis.R`, is to clean and summarise a dataset analysing human activity recognition using smartphones for 30 participants.

The raw data is contained across two .txt files, the training and test data. In addition, we are provided with activity and feature labels. The R script does the following:

1. Download the dataset (if not done already) into the existing working directory.
2. Locate the features and activity labels for the dataset.
3. Identify the features we are interested in (the mean and standard deviations).
4. Locate the training and test data, and combine this together with the feature and activity identifiers.
5. Merge the two datasets, and re-identify each row with a descriptive label.
6. Create a tidy dataset which averages the mean and standard deviations for each unique feature and activity pair for each of the 30 participants.