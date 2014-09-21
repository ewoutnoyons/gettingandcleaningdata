##Getting and Cleaning Data Course Project

This is a repo for the course Getting and Cleaning Data from Johns Hopkins University, provided through coursera.org. Part of the course is to prepare a tidy dataset obtained from a raw dataset on wearable computing. The raw dataset can be found at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data come from an experiment on human activity recognition by researchers from the University of Genova, Italy. A group of thirty volunteers performed everyday activities, like walking and sitting, wearing a smartphone that measured their body movements.

The directory 'UCI HAR Dataset' contains various files with information on the activity that was performed, an identifier on the person who carried out the experiment, and a 561-feature vector with time and frequency domain variables from the smartphone. The data is partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% for the test data.

The script run_analysis.R creates two datasets from the experimental data. The first merges the training and test data, and extracts only measurements on the mean and standard deviation for each measurement. The activities are labeled by their description, and the variables names are relabeled to make them more easily readable.

The second dataset is based on the first, and summarizes the data by calculating the average of each variable for each activity and each subject. The dataset is saved as a text file in the main UCI HAR directory.

To run the script, you should download the UCI HAR data to your hard disk and set your working directory to the folder 'UCI HAR Dataset'.