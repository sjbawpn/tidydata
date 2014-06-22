##General notes##

The program is compused of the following script:
run\_analysis.R

It will clean data from activity monitors raw data following the steps below:
Reading in the data

- read activty labels, features, x and y train and x and y tests files
- inititalize the train and test data structures and append the subject id and activity labels columns from the raw data read above.
- merge the intialized data above with the activity data for both train and test data.
- combine the test and train rows into 1 frame and clean the uneeded columns.
- clean the data to form a final data frame that consists only of means and standard deviations for given subIDs and activities.
- clean mean colum names to be more human readable and program friendly
- write the final data in tidymean.csv
