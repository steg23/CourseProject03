
# read data from txt file in working directory
train_data <- read.table(".\\train\\X_train.txt")
test_data <- read.table(".\\test\\X_test.txt")

# merge data from different txt files
cmpl_data_set <- rbind(train_data, test_data)

# read the col names from features.txt file and assign the values to my tidy_set of data
features_data<- read.table("features.txt")
col_names <- features_data[,2]
colnames(cmpl_data_set) <- col_names


# extract columns about mean and standard dev data
# check in the column name the string
mean_vect <- grepl("mean", colnames(cmpl_data_set))
std_vect <- grepl("std", colnames(cmpl_data_set))
mean_std_vect <- as.logical(mean_vect + std_vect)

reduced_data_set <- cmpl_data_set[,mean_std_vect]


train_act <- read.table(".\\train\\y_train.txt")
test_act <- read.table(".\\test\\y_test.txt")
activity_set <- rbind(train_act, test_act)
activity_set <- as.numeric(activity_set[,1])

label_name <- read.table("activity_labels.txt")
label_name <- as.character(label_name[,2])


reduced_data_set$Activity <- activity_set


sub_set_train <- read.table(".\\train\\subject_train.txt")
sub_set_test <- read.table(".\\test\\subject_test.txt")
sub_set <- rbind(sub_set_train, sub_set_test)
sub_set <- as.numeric(sub_set[,1])

reduced_data_set$Subject <- sub_set

tidy_set <- aggregate(reduced_data_set[,1:79], by=list(Subject=reduced_data_set$Subject, Activity=reduced_data_set$Activity), FUN = mean)

#tidy_set <- tidy_set[c(2,1,3:81)]

tidy_set$Activity <- replace(tidy_set$Activity, tidy_set$Activity==1 , label_name[1])
tidy_set$Activity <- replace(tidy_set$Activity, tidy_set$Activity==2 , label_name[2])
tidy_set$Activity <- replace(tidy_set$Activity, tidy_set$Activity==3 , label_name[3])
tidy_set$Activity <- replace(tidy_set$Activity, tidy_set$Activity==4 , label_name[4])
tidy_set$Activity <- replace(tidy_set$Activity, tidy_set$Activity==5 , label_name[5])
tidy_set$Activity <- replace(tidy_set$Activity, tidy_set$Activity==6 , label_name[6])


print(tidy_set)
