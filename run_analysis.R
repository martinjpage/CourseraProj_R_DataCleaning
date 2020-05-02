
##Load Libraries
library(dplyr)

##Download ZIP Folder

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = ".//smartphone-data.zip")

##Unzip Files
unzip(".//smartphone-data.zip", list = TRUE)
unzip("smartphone-data.zip", exdir = ".//Data")

##Load Files

#training set
x_train <- read.table(".//Data//UCI HAR Dataset//train//X_train.txt")
y_train <- read.table(".//Data//UCI HAR Dataset//train//y_train.txt")
subject_train <- read.table(".//Data//UCI HAR Dataset//train//subject_train.txt")

#test set
x_test <- read.table(".//Data//UCI HAR Dataset//test//X_test.txt")
y_test <- read.table(".//Data//UCI HAR Dataset//test//y_test.txt")
subject_test <- read.table(".//Data//UCI HAR Dataset//test//subject_test.txt")

#feature labels
features <- read.table(".//Data//UCI HAR Dataset//features.txt")

#activity labels
act_labels <- read.table(".//Data//UCI HAR Dataset//activity_labels.txt")

##Create separate complete train and test datasets ###Task 4: add column names

#column names
col_names <- make.names(features[,2]) #convert features to character vector suitable for column names
col_names <- gsub(x = col_names, pattern = "[.]", replacement = "") #remove '.' from column names

#training set
colnames(x_train) <- col_names #name the columns of the data frame
train_set <- data.frame(x_train, subject = subject_train[,1], activity = y_train[,1]) #add two columns to x_train

#test set
colnames(x_test) <- col_names #name the columns of the data frame
test_set <- data.frame(x_test, subject = subject_test[,1], activity = y_test[,1]) #add two columns to x_train

##Task 1
##Merge train set and test set into one data set
merged_df <- rbind(train_set, test_set) #combine the two data sets by binding the rows

##Task 2
##Extract only mean and standard deviation for each measurement
index <- grep("(-mean|-std)[^Freq]()", features[,2]) 
            #get indices of the columnn names by identifying -mean() or -std() in original feature names

small_df <- merged_df[, c(index, ncol(merged_df) - 1, ncol(merged_df))]
            #subset merged data set using the column indices for the mean and std measurements as well as 
            #keep the last two colummns of the subject and the activity ids

##Task 3
##Convert activtiy names into activtiy names
act_names <- as.character(as.matrix(act_labels[2])) #convert activity labels into a character vector
act_names <- gsub("WALKING_UPSTAIRS", "WALK_UP", act_names) #shorten label "WALKING_UPSTAIRS"
act_names <- gsub("WALKING_DOWNSTAIRS", "WALK_DOWN", act_names) #shorten label "WALKING_DOWNSTAIRS"


small_df$activity <- as.factor(small_df$activity) #convert the activity column to be a factor
levels(small_df$activity) <- act_names #set the levels of the activity factor to the activity names

##Task 4
##Column (variable) names already added when creating the separate data sets, above

##Task 5
##Variable (column) averages grouped by activity AND subject
summary_df <- small_df %>% group_by(activity, subject) %>% summarise_all(mean)

#write tidy data to file
write.table(summary_df, ".//Assigment4Output.txt", row.name=FALSE)


