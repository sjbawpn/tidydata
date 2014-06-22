# Read activity lables and features
activity_labels <- read.table("C:\\MinGW\\msys\\1.0\\home\\jarvis\\project\\r\\project\\UCI HAR Dataset\\activity_labels.txt", quote="\"")
features <- read.table("C:\\MinGW\\msys\\1.0\\home\\jarvis\\project\\r\\project\\UCI HAR Dataset\\features.txt", quote="\"")

### Setup Train DATA
# Read train data
X_train <- read.table("C:\\MinGW\\msys\\1.0\\home\\jarvis\\project\\r\\project\\UCI HAR Dataset\\train\\X_train.txt", quote="\"")
y_train <- read.table("C:\\MinGW\\msys\\1.0\\home\\jarvis\\project\\r\\project\\UCI HAR Dataset\\train\\y_train.txt", quote="\"")
subject_train <- read.table("C:\\MinGW\\msys\\1.0\\home\\jarvis\\project\\r\\project\\UCI HAR Dataset\\train\\subject_train.txt", quote="\"")
# Set the column names for train
colnames(X_train) <- features$V2
# Bind the suject ID to the x train
xTrain_with_subID<-cbind(subject_train,X_train) 
#activity_labels relate to y_test and y_train
xTrain_with_actLabel_and_subID<-cbind(y_train,xTrain_with_subID)
# set subID column name
colnames(xTrain_with_actLabel_and_subID)[2]<-'subID'
# merge with append activity_label 
xTrain_full<-merge(xTrain_with_actLabel_and_subID, activity_labels,by.x="V1",by.y="V1")
# set activity at the head of the data structure
idx <- grep("V2", names(xTrain_full)) 
xTrain_clean <- xTrain_full[, c(idx, (1:ncol(xTrain_full))[-idx])]

### Setup Test DATA
# Read test data
X_test <- read.table("C:\\MinGW\\msys\\1.0\\home\\jarvis\\project\\r\\project\\UCI HAR Dataset\\test\\X_test.txt", quote="\"")
y_test <- read.table("C:\\MinGW\\msys\\1.0\\home\\jarvis\\project\\r\\project\\UCI HAR Dataset\\test\\y_test.txt", quote="\"")
subject_test <- read.table("C:\\MinGW\\msys\\1.0\\home\\jarvis\\project\\r\\project\\UCI HAR Dataset\\test\\subject_test.txt", quote="\"")
# Set the column names for test
colnames(X_test) <- features$V2
# Bind the suject ID to the x test
xTest_with_subID<-cbind(subject_test,X_test) 
# Bind the activity label to the x test
xTest_with_actLabel_and_subID<-cbind(y_test,xTest_with_subID)
# set subID column name
colnames(xTest_with_actLabel_and_subID)[2]<-'subID'
# merge with append activity_label 
xTest_full<-merge(xTest_with_actLabel_and_subID,activity_labels,by.x="V1",by.y="V1")
# set activity at the head of the data structure
idx <- grep("V2", names(xTest_full)) 
xTest_clean <- xTest_full[, c(idx, (1:ncol(xTest_full))[-idx])]

#### Combine both train and test and remove the first column (actLabel)
df<-rbind(xTrain_clean, xTest_clean)
df<-subset(df, select = -V1)

#### name the activity ID column.
colnames(df)[1]<-'activity'

#Clean data the mean and standard deviation for the given subject and activity associated with it.
df<-df[, grepl("activity|subID|mean[[:punct:]]|std[[:punct:]]",names(df))]

#Create new dataframes that calculate mean for each var for each activity and subID
activityMean<-data.frame(do.call(rbind,by(df[,-(1:2)], df[,1], colMeans))) 
subjectMean<-data.frame(do.call(rbind,by(df[,-(1:2)], df[,2], colMeans))) 

#Binds meanActivity and meanSubID together into second independent dataset
tidyData<-rbind(activityMean, subjectMean)

# Write data to CSV file
write.csv(tidyData,"tidymean.csv")
