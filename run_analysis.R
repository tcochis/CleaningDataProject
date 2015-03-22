# this script summarizes the HAR data into a tidy data set
# containing a averages for each of the variables in the 
# raw data grouped by subject and activity

# The data can be obtained by running the commands below:
#
#temp <- tempfile()
#fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#download.file(fileUrl, destfile = temp)
#unzip(temp,exdir = ".")


library(plyr); library(dplyr)

# set to folder containing raw data
setwd("C:\\coursera\\Cleaning Data\\Project\\UCI HAR Dataset")

# load feature labels
labels <- read.csv(".\\features.txt", header=FALSE, sep=" ")
labels2 <- labels[,2]

# load "x" files and merge them
testx <- read.table(".\\test\\X_test.txt",header=FALSE)
trainx <- read.table(".\\train\\X_train.txt",header=FALSE)
xdat <-rbind(testx,trainx)

# load "y" files and merge them
testy <- read.table(".\\test\\y_test.txt",header=FALSE)
trainy <- read.table(".\\train\\y_train.txt",header=FALSE)
ydat <-rbind(testy,trainy)


# load subject files amd merge them
testsubject <- read.table(".\\test\\subject_test.txt", header=FALSE, col.names=c("subject_id"))
trainsubject <- read.table(".\\train\\subject_train.txt", header=FALSE, col.names=c("subject_id"))
subjects <- rbind(testsubject,trainsubject)

# set column headers
names(xdat) <- labels2

# extract mean and STd measurements
xdat2 <-xdat[,grep("mean|std",labels2)]

# combine measurements with subject data
step3 <-cbind(ydat,xdat2)
step3 <- cbind(subjects,step3)

# add descriptive activity names
activities <- read.table(".\\activity_labels.txt", header=FALSE, col.names=c("activity_id","activity"))
merge1 <- merge(activities,step3,by.x="activity_id",by.y="V1", all=TRUE)
merge1 <- arrange(merge1,subject_id)

# summarize data, grouping by subject and activity
step5 <- merge1 %>% group_by(subject_id,activity) %>% summarise_each(funs(mean))

# edit column names to be more descriptive
colnames(step5)[4:81] <- lapply(colnames(step5)[4:81], function(x) paste(x,'-mean'))

write.table(step5,".\\summaryData.txt", row.names=FALSE)

