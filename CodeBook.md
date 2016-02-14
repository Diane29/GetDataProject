# Getting and Cleaning Data Project
## Diandra Jones
=============================================================================================================

### The R script
Run_Analysis.R selects and tidy the data downloaded from UCI Machine Learning Repository

-Create a folder on the local directory after downloading data from UCI
-Load the Train and Test text files after setting work directory
-Select the columns to be used after loading the Features text file and create vectors
-Assign the necessary columns to the Training  and Testing datasets 
-Merge the individual Training datasets then do the same with the Testing datasets
-Then merge these two datasets to create a combine dataset
-Load the Activity text file and assign column names then merge with the combine Training and Testing dataset
-Modify the column names of the final merged dataset
-Melt the merged dataset into a long-format with Subject and Activity as the main IDs
-Then cast melted dataset and calculate the average of each variable by Subject and Activity
-Modify the final tidy dataset and check for missing values
-Write tidy dataset to a text file to be uploaded to github
================================================================================================================

### Variables in Tidy Dataset
There are 68 variables in the dataset displaying either the mean or standard deviations except
the Subject and Activity variables

Abbreviations:-
Acc - Acceleration
Mag - Magnitude
XYZ - 3-axial signals in the X, Y and Z directions

-Subject - the number indentifying the subject in the data
-Activity - the type of activity associted with measurements (signals) listed below
  1 - WALKING
  2 - WALKING_UPSTAIRS
  3 - WALKING_DOWNSTAIRS
  4 - SITTING
  5 - STANDING
  6 - LAYING

Time Domain Signals:-          	
-TimeBodyAcc-Mean-X		          -TimeBodyAcc-Mean-Y		        -TimeBodyAcc-Mean-Z
-TimeBodyAcc-StdDev-X		        -TimeBodyAcc-StdDev-Y		      -TimeBodyAcc-StdDev-Z          
-TimeGravityAcc-Mean-X		      -TimeGravityAcc-Mean-Y	  	  -TimeGravityAcc-Mean-Z
-TimeGravityAcc-StdDev-X	      -TimeGravityAcc-StdDev-Y	    -TimeGravityAcc-StdDev-Z       
-TimeBodyAccJerk-Mean-X         -TimeBodyAccJerk-Mean-Y		    -TimeBodyAccJerk-Mean-Z
-TimeBodyAccJerk-StdDev-X	      -TimeBodyAccJerk-StdDev-Y	    -TimeBodyAccJerk-StdDev-Z      
-TimeBodyGyro-Mean-X            -TimeBodyGyro-Mean-Y    	    -TimeBodyGyro-Mean-Z
-TimeBodyGyro-StdDev-X    	    -TimeBodyGyro-StdDev-Y        -TimeBodyGyro-StdDev-Z         
-TimeBodyGyroJerk-Mean-X	      -TimeBodyGyroJerk-Mean-Y      -TimeBodyGyroJerk-Mean-Z
-TimeBodyGyroJerk-StdDev-X 	    -TimeBodyGyroJerk-StdDev-Y	  -TimeBodyGyroJerk-StdDev-Z    
-TimeBodyAccMag-Mean 	          -TimeBodyAccMag-StdDev         
-TimeGravityAccMag-Mean		      -TimeGravityAccMag-StdDev      
-TimeBodyAccJerkMag-Mean        -TimeBodyAccJerkMag-StdDev     
-TimeBodyGyroMag-Mean           -TimeBodyGyroMag-StdDev        
-TimeBodyGyroJerkMag-Mean       -TimeBodyGyroJerkMag-StdDev

Frequency Domain Signals:-    
-FreqBodyAcc-Mean-X   	  	    -FreqBodyAcc-Mean-Y           	-FreqBodyAcc-Mean-Z
-FreqBodyAcc-StdDev-X      	    -FreqBodyAcc-StdDev-Y          	-FreqBodyAcc-StdDev-Z          
-FreqBodyAccJerk-Mean-X         -FreqBodyAccJerk-Mean-Y       	-FreqBodyAccJerk-Mean-Z
-FreqBodyAccJerk-StdDev-X  	    -FreqBodyAccJerk-StdDev-Y       -FreqBodyAccJerk-StdDev-Z      
-FreqBodyGyro-Mean-X      	    -FreqBodyGyro-Mean-Y           	-FreqBodyGyro-Mean-Z  
-FreqBodyGyro-StdDev-X     	    -FreqBodyGyro-StdDev-Y          -FreqBodyGyro-StdDev-Z         
-FreqBodyAccMag-Mean            -FreqBodyAccMag-StdDev  
-FreqBodyBodyAccJerkMag-Mean    -FreqBodyBodyAccJerkMag-StdDev 
-FreqBodyBodyGyroMag-Mean       -FreqBodyBodyGyroMag-StdDev 
-FreqBodyBodyGyroJerkMag-Mean   -FreqBodyBodyGyroJerkMag-StdDev
