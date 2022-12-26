# Download data, unzip and save in Desktop

# Set working directory
setwd("/Users/Doris/Desktop/UCI_HAR_Dataset")

# Reading data
## (1)  Reading training data
subject_train <- read.table("/Users/Doris/Desktop/UCI_HAR_Dataset/train/subject_train.txt")
x_train <- read.table("/Users/Doris/Desktop/UCI_HAR_Dataset/train/X_train.txt")
y_train <- read.table("/Users/Doris/Desktop/UCI_HAR_Dataset/train/y_train.txt")

## (2) Reading test data
subject_test <- read.table("/Users/Doris/Desktop/UCI_HAR_Dataset/test/subject_test.txt")
x_test <- read.table("/Users/Doris/Desktop/UCI_HAR_Dataset/test/X_test.txt")
y_test <- read.table("/Users/Doris/Desktop/UCI_HAR_Dataset/test/y_test.txt")

## (3) Reading activity labels and features
activity_label <- read.table("/Users/Doris/Desktop/UCI_HAR_Dataset/activity_labels.txt")
feature <- read.table("/Users/Doris/Desktop/UCI_HAR_Dataset/features.txt")

# Editing column names
colnames(x_train) <- feature[,2]
colnames(x_test) <- feature[,2]

colnames(y_train) <- "ActivityID"
colnames(y_test) <- "ActivityID"

colnames(subject_train) <- "SubjectID"
colnames(subject_test) <- "SubjectID"

colnames(activity_label) <- c("ActivityID", "Activity")

# Merging dataset
train_data <- cbind(subject_train, y_train, x_train)
test_data <- cbind(subject_test, y_test, x_test)
all_data <- rbind(train_data, test_data)
final_data <- merge(activity_label, all_data, by="ActivityID")

# Extract only the measurements on the mean and standard deviation for each measurement
indice <- c(grep("mean", names(final_data)), grep("std", names(final_data)))
mean_std <- final_data[,c(2,3,indice)]

# Using descriptive activity names: already done while merging the final data

# Using descriptive variable names
names(mean_std)
col_names <- sub("^t", "Time", names(mean_std))
col_names <- sub("^f", "Frequency", col_names)
col_names <- sub("BodyBody", "Body", col_names)
colnames(mean_std) <- col_names

# Create a new tidy data
tidy_data <- aggregate(.~Activity+SubjectID,mean_std, mean)

# Write the new tidy data to a txt file
write.table(tidy_data, file="tidy.data.txt", row.names = FALSE)
