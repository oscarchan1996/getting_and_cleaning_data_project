## Code book for Getting and Cleaning Data Course Project

This code book describes the variables in the tidy dataset in `tidy.txt`.

# Identifiers

The first two columns of the tidy data identifies each separate observation. They consist of:

1. Subject: This identifies which of the 30 participants is under observation, and is numbered from 1 to 30.
2. Activity: This describes the activity that is being performed by the subject (see below).

# Activity descriptions

There are six different activities that each of the 30 participants was asked to perform, where measurements were taken. The labels are self-explanatory and include:

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

The original dataset assigned each of the activities to their corresponding numbered value above.

# Measurements

Each of the below indicate the measurement that is being performed. The code names describe the measurement, dimension and whether it is a mean or standard deviation. Each observation records the mean value of the data for each subject and activity pairing.

*tbodyacc_mean_x
*tbodyacc_mean_y
*tbodyacc_mean_z
*tbodyacc_std_x
*tbodyacc_std_y
*tbodyacc_std_z
*tgravityacc_mean_x
*tgravityacc_mean_y
*tgravityacc_mean_z
*tgravityacc_std_x
*tgravityacc_std_y
*tgravityacc_std_z
*tbodyaccjerk_mean_x
*tbodyaccjerk_mean_y
*tbodyaccjerk_mean_z
*tbodyaccjerk_std_x
*tbodyaccjerk_std_y
*tbodyaccjerk_std_z
*tbodygyro_mean_x
*tbodygyro_mean_y
*tbodygyro_mean_z
*tbodygyro_std_x
*tbodygyro_std_y
*tbodygyro_std_z
*tbodygyrojerk_mean_x
*tbodygyrojerk_mean_y
*tbodygyrojerk_mean_z
*tbodygyrojerk_std_x
*tbodygyrojerk_std_y
*tbodygyrojerk_std_z
*tbodyaccmag_mean
*tbodyaccmag_std
*tgravityaccmag_mean
*tgravityaccmag_std
*tbodyaccjerkmag_mean
*tbodyaccjerkmag_std
*tbodygyromag_mean
*tbodygyromag_std
*tbodygyrojerkmag_mean
*tbodygyrojerkmag_std
*fbodyacc_mean_x
*fbodyacc_mean_y
*fbodyacc_mean_z
*fbodyacc_std_x
*fbodyacc_std_y
*fbodyacc_std_z
*fbodyaccjerk_mean_x
*fbodyaccjerk_mean_y
*fbodyaccjerk_mean_z
*fbodyaccjerk_std_x
*fbodyaccjerk_std_y
*fbodyaccjerk_std_z
*fbodygyro_mean_x
*fbodygyro_mean_y
*fbodygyro_mean_z
*fbodygyro_std_x
*fbodygyro_std_y
*fbodygyro_std_z
*fbodyaccmag_mean
*fbodyaccmag_std
*fbodybodyaccjerkmag_mean
*fbodybodyaccjerkmag_std
*fbodybodygyromag_mean
*fbodybodygyromag_std
*fbodybodygyrojerkmag_mean
*fbodybodygyrojerkmag_std