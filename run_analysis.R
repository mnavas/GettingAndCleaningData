##You should create one R script called run_analysis.R that does the following. 

## Merges the training and the test sets to create one data set.
## Extracts only the measurements on the mean and standard deviation for each measurement. 
## Uses descriptive activity names to name the activities in the data set
## Appropriately labels the data set with descriptive activity names. 
## Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


# Sets the working path
# It requires the existence of the following files at the working path:
#   X_train.txt, X_test.txt, y_train.txt, y_test.txt and activity_labels.txt
setwd("/home/mario/gcdata")

#Process train X data
con = file("X_train.txt",open="r")
train <- Reduce(rbind, lapply(strsplit(readLines(con),"\\s+"),as.numeric))[,2:562]
close(con)

#Process test X data
con = file("X_test.txt",open="r")
test <- Reduce(rbind, lapply(strsplit(readLines(con),"\\s+"),as.numeric))[,2:562]
close(con)

## Merges the training and the test sets to create one data set.
data <- data.frame(rbind(train,test),row.names=NULL)

## Extracts only the measurements on the mean and standard deviation for each measurement. 
sapply(data,mean)
sapply(data,sd)

## Uses descriptive activity names to name the activities in the data set
names <- read.delim("activity_labels.txt",header=FALSE,sep=" ",col.names=c("index","activity"))

#Loads and binds Y (activity) information from train and test data
activity <- rbind(read.table("y_train.txt",header=FALSE,col.names=c("index")),read.table("y_test.txt",header=FALSE,col.names=c("index")))

## Appropriately labels the data set with descriptive activity names. 
y <- merge(activity,names)["activity"]

## Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidy <- NULL
for(field in colnames(data)){
  tidy <- rbind(tidy,tapply(data[,field],y,mean)) 
}

##Show the tidy data set
tidy


