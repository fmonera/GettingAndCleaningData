# Getting And Cleaning Data Course Project

This is the project for the "Getting And Cleaning Data Course Project".

## run_analysis.R

This script works in several phases following the steps required to complete the project. Before starting with the actual tasks, the script loads all the needed data files.

Once the data is loaded, it performs the following steps:

1. Merge training and test sets into one, named *alldata*.
2. Generate another data set with just the mean and the standard deviation, named *meanstddata*.
3. Assign descriptive activity names to *meanstddata* by reading the activity names from the *activity_labels.txt* file. We had already loaded this file into *activitiesMeta*.
4. Assign descriptive activity names. What we do here is just a simple substitution of the column names to give more meaningfull names.
5. Create a new tidy set with the average of each variable for each activity and subject. To do this we use the *aggregate* function to group by activity and subject, agregating by the *mean* function.

The resulting data set is written to a new file at the end of the script.
