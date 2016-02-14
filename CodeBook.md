# Getting and Cleaning Data Project
## Diandra Jones
=============================================================================================================

## The R script
Run_Analysis.R selects and tidy the data downloaded from UCI Machine Learning Repository

- Create a folder on the local directory after downloading data from UCI
- Load the Train and Test text files after setting work directory
- Select the columns to be used after loading the Features text file and create vectors
- Assign the necessary columns to the Training  and Testing datasets 
- Merge the individual Training datasets then do the same with the Testing datasets
- Then merge these two datasets to create a combine dataset
- Load the Activity text file and assign column names then merge with the combine Training and Testing dataset
- Modify the column names of the final merged dataset
- Melt the merged dataset into a long-format with Subject and Activity as the main IDs
- Then cast melted dataset and calculate the average of each variable by Subject and Activity
- Modify the final tidy dataset and check for missing values
- Write tidy dataset to a text file to be uploaded to github

## Variables in Tidy Dataset
There are 68 variables in the dataset
- Subject and Activity
- 40 Time Domain Signals with either mean or standard deviation
- 26 Frequency Domain Signals with either mean or standad deviation

### Abbreviations
StdDev- Standard Deviation
Acc - Acceleration
Mag - Magnitude
XYZ - 3-axial signals in the X, Y and Z directions

### Subject 
- number indentifying the subject in the data

### Activity 
- type of activity associted with measurements (signals) listed below
  1 - WALKING
  2 - WALKING_UPSTAIRS
  3 - WALKING_DOWNSTAIRS
  4 - SITTING
  5 - STANDING
  6 - LAYING
