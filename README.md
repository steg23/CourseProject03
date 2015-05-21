### Script Explanation line by line

Line 3: Read the data from X_train.txt file and save that into a data frame object
Line 4: Read the data from X_test.txt file and save that into a data frame object
Line 5: Merge the data from the previous two data frames to create a single data frame object
Line 10: Read the data from features.txt file and save that into a data frame object; this file contain the label of the data frame
Line 11: Create a vector with the label name
Line 12: Assign the column names of the data frame
Line 17: Create a vector with the position of the mean of the measures
Line 18: Create a vector with the position of the standard deviation of the measures
Line 19: Merge the previous two vector
Line 21: Create a reduced data frame with only the data of mean and standard deviation
Line 24: Read the data from y_train.txt file and save that into a data frame object; this file contain the activity relative to the measures
Line 25: Read the data from y_test.txt file and save that into a data frame object; this file contain the activity relative to the measures
Line 26: Merge the data from the previous two data frames to create a single data frame object
Line 27: Coerce data in numeric format and convert the data frame in a vector
Line 29: Read the data from activity_labels.txt file and save that into a data frame object
Line 30: Coerce data in character format and convert the data frame in a vector
Line 33: Add the new vector in the reduced data frame to combine data to the relative activity
Line 36: Read the data from subject_train.txt file and save that into a data frame object; this file contain the subject who perform the activity
Line 37: Read the data from subject_test.txt file and save that into a data frame object; this file contain the subject who perform the activity
Line 38: Combine the previous data
Line 39: Coerce the data in a numeric vector
Line 41: Add the new vector in the reduced data frame to combine data to the relative subject
Line 43: Create a tidy data set ordering the data by Activity and Subject
Line 47-52: Replace numeric value of activity with the corresponding character value 
Line 55: Print the tidy data set