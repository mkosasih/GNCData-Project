library(dplyr)

#Retreive Tables from working directory
WD <- getwd()

if(!file.exists(paste(WD,"/UCI HAR Dataset",sep=""))) 
    stop("UCI HAR Dataset folder must be saved in your working directory")  

XTest <- read.table(paste(WD,"/UCI HAR Dataset/test/X_test.txt",sep=""))
yTest <- read.table(paste(WD,"/UCI HAR Dataset/test/y_test.txt",sep=""))
subTest <- read.table(paste(WD,"/UCI HAR Dataset/test/subject_test.txt",sep=""))

XTrain <- read.table(paste(WD,"/UCI HAR Dataset/train/X_train.txt",sep=""))
yTrain <- read.table(paste(WD,"/UCI HAR Dataset/train/y_train.txt",sep=""))
subTrain <- read.table(paste(WD,"/UCI HAR Dataset/train/subject_train.txt",sep=""))

#Combine Test and Train into 1 data frame called Data
Test <- cbind(subTest, yTest, XTest)
Train <- cbind(subTrain, yTrain, XTrain)
Data <- rbind(Test,Train)

#Add original Names
Features <- read.table(paste(WD,"/UCI HAR Dataset/features.txt",sep=""))
Title <- as.vector(Features[,2])
Title <- c("Subject", "Act_No", Title)
validTitle <- make.names(Title, unique=TRUE, allow_ = TRUE)
colnames (Data) <- validTitle

#Match Activity based on Act_No
Activity <- read.table(paste(WD,"/UCI HAR Dataset/activity_labels.txt",sep=""))
names(Activity) <- c("Act_No", "Activity")
Data <- arrange(left_join(Data,Activity), Act_No)

#Create Tidy Data which includes only Subject, Activity and Measurement for Mean and std value
Tidy <- select(Data, Subject, Activity, contains("mean"), contains("std"))

#Tidy data set with the average of each variable for each activity and each subject.
Tidy2 <- Tidy %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))

#Create a file for Tidy2.txt in your working directory
write.table(Tidy2, file="TidyData.txt", row.names= FALSE)