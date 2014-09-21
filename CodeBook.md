##Codebook

###Background
The run_analysis script creates two datasets from the UCI HAR Dataset. The data come from an experiment on human activity recognition by researchers from the University of Genova, Italy. A group of thirty volunteers performed everyday activities, like walking and sitting, wearing a smartphone that measured their body movements. 

###Data
In the UCI HAR Dataset folder is a file 'features_info.txt' that contains detailed information on the measurements from the smartphone's accelerometer and gyroscope. The measurements are normalized and bounded within [-1,1]. For the analysis, we only use measurements on the mean and standard deviation of each feature. The file 'README.txt' contains additional information on the experimental design and the files within the UCI HAR Dataset.

###Derivations
To create the dataset, we first read in the following files:
* 'subject_train.txt': Subject IDs on train subjects
* 'train/y_train.txt': Training activity labels
* 'train/X_train.txt': Training data
* 'subject_test.txt': Subject IDs on test subjects
* 'test/y_test.txt': Test activity labels
* 'test/X_test.txt': Test data
* 'activity_labels.txt': Link of the activity labels with the activity name
* 'features.txt': List of all features

The train dataset is created by joining the subject IDs from 'subject_train.txt' with the activity labels from 'train/y_train.txt' and the movement data from 'train/X_train.txt'. The test dataset is derived in a similar way.

The file 'features.txt' contains the variable names for the variables in the 'X_train/X_test' datasets. The file 'activity_labels.txt' has the description of each activity label in the y_train and y_test files. The activity labels themselves are renamed as activityId, and the subject labels as subjectId.

The total dataset is created by binding the train and test datasets. The activity IDs are replaced by the descriptive names to make the data more self explanatory. In addition, the variables names on all measurements are simplified by removing special characters to make them more easily readable.

From this dataset a second dataset is created that summarizes the data by calculating the average of each variable for each activity and each subject. The dataset is saved as a text file in the main UCI HAR directory.

###Variables
activityDescription
subjectId            
tBodyAccMeanX
tBodyAccMeanY
tBodyAccMeanZ
tBodyAccStdX
tBodyAccStdY
tBodyAccStdZ
tGravityAccMeanX
tGravityAccMeanY
tGravityAccMeanZ
tGravityAccStdX
tGravityAccStdY
tGravityAccStdZ
tBodyAccJerkMeanX
tBodyAccJerkMeanY
tBodyAccJerkMeanZ
tBodyAccJerkStdX
tBodyAccJerkStdY
tBodyAccJerkStdZ
tBodyGyroMeanX
tBodyGyroMeanY
tBodyGyroMeanZ
tBodyGyroStdX
tBodyGyroStdY
tBodyGyroStdZ
tBodyGyroJerkMeanX
tBodyGyroJerkMeanY
tBodyGyroJerkMeanZ
tBodyGyroJerkStdX
tBodyGyroJerkStdY
tBodyGyroJerkStdZ
tBodyAccMagMean
tBodyAccMagStd
tGravityAccMagMean
tGravityAccMagStd
tBodyAccJerkMagMean
tBodyAccJerkMagStd
tBodyGyroMagMean
tBodyGyroMagStd
tBodyGyroJerkMagMean
tBodyGyroJerkMagStd
fBodyAccMeanX
fBodyAccMeanY
fBodyAccMeanZ
fBodyAccStdX
fBodyAccStdY
fBodyAccStdZ
fBodyAccJerkMeanX
fBodyAccJerkMeanY
fBodyAccJerkMeanZ
fBodyAccJerkStdX
fBodyAccJerkStdY
fBodyAccJerkStdZ        
fBodyGyroMeanX
fBodyGyroMeanY   
fBodyGyroMeanZ
fBodyGyroStdX          
fBodyGyroStdY
fBodyGyroStdZ           
fBodyAccMagMean
fBodyAccMagStd          
fBodyBodyAccJerkMagMean
fBodyBodyAccJerkMagStd 
fBodyBodyGyroMagMean
fBodyBodyGyroMagStd
fBodyBodyGyroJerkMagMean
fBodyBodyGyroJerkMagStd

prefix 't' denotes time, 'f' denotes frequency.