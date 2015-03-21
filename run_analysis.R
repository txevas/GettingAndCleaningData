#load the libraries
library(dplyr)
library(tidyr)

#load data into environment

#test data
subject_test <- read.table("./test/subject_test.txt")
y_test <- read.table("./test/y_test.txt")
x_test <- read.table("./test/x_test.txt")

#train data
subject_train <- read.table("./train/subject_train.txt")
y_train <- read.table("./train/y_train.txt")
x_train <- read.table("./train/x_train.txt")

#features & activity_labels 
#skip factors
features <- read.table("features.txt",colClasses=c("integer","character")) 
activity_labels <- read.table("activity_labels.txt",colClasses=c("integer","character"))

#1 Merges the training and the test sets to create one data set.

subject <- rbind(subject_test, subject_train)
activity <- rbind(y_test, y_train)
data <- rbind(x_test, x_train)

#change names
names(subject) <- "subject"
names(activity) <- "activity"

## first dataset: train + test
dataset <- cbind(subject, activity, data)

#2 Extracts only the measurements on the mean and standard deviation 
# for each measurement.

meanstdlist <- features[grep("-mean|-Mean|-std|-Std", features$V2), "V1"] 
#taking into account subject and activity which are set in the first place
meanstdlistplus<-(meanstdlist + 2)

## second dataset: subject, activity, mean and std columns
data <- select(dataset, 1,2, meanstdlistplus)

#3 Uses descriptive activity names to name the activities in the data set

data[['activity']]<-activity_labels[match(data[['activity']], activity_labels[['V1']] ), 'V2']

#4 Appropriately labels the data set with descriptive variable names. 

features_names <- select(features,V2)
#extracting the names we need
column_names <- features_names[meanstdlist,1]
#assigning these names
colnames(data)[3:ncol(data)] <- column_names

#5 From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.

#create key/value pair feature/value
data_clean <- gather(data, feature, value, -subject,-activity)
#grouping data 
data_group <- group_by(data_clean, subject, activity,feature)
#calculates the average in every group
tidy_data <- summarize(data_group, mean(value))

#generates output data file
write.table(tidy_data, file="output.txt", row.name=FALSE)
