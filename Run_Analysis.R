setwd("/Users/Diane/Documents/GetDataProj/")

## Input Training datasets stored in a local folder
trainX <- read.table("./train/X_train.txt",header=FALSE)
trainY <- read.table("./train/Y_train.txt",header=FALSE)
trainSub <- read.table("./train/subject_train.txt",header=FALSE)

## Input Testing datasets from local folder
testX <- read.table("./test/X_test.txt",header=FALSE)
testY <- read.table("./test/Y_test.txt",header=FALSE)
testSub <- read.table("./test/subject_test.txt",header=FALSE)

## Input dataset describing the data columns and create vectors to
## select only the columns needed
labelX <- read.table("./features.txt",header=FALSE)
columns <- labelX[,2]
mean_std_vec <- (grepl("-mean()",columns) | grepl("std()",columns))
freq_vec <- (grepl("Freq",columns))

## Combine the Training and Testing datasets after selecting
## and labelling the necessary columns
colnames(trainX) <- columns
trainX <- trainX[mean_std_vec==TRUE & freq_vec == FALSE]
colnames(trainY) <- "Labels"
colnames(trainSub) <- "Subject"
trainData <- cbind(trainX,trainY,trainSub)

colnames(testX) <- columns
testX <- testX[mean_std_vec==TRUE & freq_vec == FALSE]
colnames(testY) <- "Labels"
colnames(testSub) <- "Subject"
testData <- cbind(testX,testY,testSub)

combineData <- rbind(trainData,testData)

## Input Activites datasets and label columns
## Then merge with the combine Train and Test dataset
activ_labels <- read.table("./activity_labels.txt",header=FALSE)
colnames(activ_labels) <- c("Labels","Activity")
mergeData <- merge(combineData,activ_labels,by ="Labels")

## Modify the column names of the merged dataset
Desc_colnames <-  names(mergeData)
Desc_colnames <- gsub('mean', 'Mean',Desc_colnames)
Desc_colnames <- gsub('std', 'StdDev',Desc_colnames) 
Desc_colnames <- gsub('^f', 'Freq',Desc_colnames)
Desc_colnames <- gsub('^t', 'Time',Desc_colnames)
Desc_colnames <- gsub('[()]',"",Desc_colnames)
colnames(mergeData) <- Desc_colnames


## Convert the merged dataset to calculate the average of each variable
## by Subject and Activity
library(reshape2) ## Activate library
meltMergeData <- melt(mergeData, id = c("Subject", "Activity"), 
                                 variable.name = "Activ_Var", 
                                 value.name = "Activ_Value")
castMergeData  <- dcast(meltMergeData,Subject + Activity ~ Activ_Var,mean)
FinalData <- castMergeData[,-3] ## Remove 'Labels' column
table(is.na(FinalData)) ## Check for missing values

## Create the Tidy dataset
write.table(FinalData,file="./tidy_data.txt",row.names=FALSE)
