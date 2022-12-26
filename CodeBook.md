---
title: "CodeBook"
author: "Doris"
date: "2022-12-25"
output: html_document
---

# Getting and Cleaning Data Course Project

## Data Source
The data from the course project was collected from the accelerometers from the Samsung Galaxy S smartphone: [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

A full description is available at the site where the data was obtained:[link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Feature Selection

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAcc-XYZ and TimeGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccJerk-XYZ and TimeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccMag, TimeGravityAccMag, TimeBodyAccJerkMag, TimeBodyGyroMag, TimeBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAcc-XYZ, FrequencyBodyAccJerk-XYZ, FrequencyBodyGyro-XYZ, FrequencyBodyAccJerkMag, FrequencyBodyGyroMag, FrequencyBodyGyroJerkMag.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## Variables in the tidy data

[1] "Activity"                            "SubjectID"                          
[3] "TimeBodyAcc-mean()-X"                "TimeBodyAcc-mean()-Y"               
[5] "TimeBodyAcc-mean()-Z"                "TimeGravityAcc-mean()-X"            
[7] "TimeGravityAcc-mean()-Y"             "TimeGravityAcc-mean()-Z"            
[9] "TimeBodyAccJerk-mean()-X"            "TimeBodyAccJerk-mean()-Y"           
[11] "TimeBodyAccJerk-mean()-Z"            "TimeBodyGyro-mean()-X"              
[13] "TimeBodyGyro-mean()-Y"               "TimeBodyGyro-mean()-Z"              
[15] "TimeBodyGyroJerk-mean()-X"           "TimeBodyGyroJerk-mean()-Y"          
[17] "TimeBodyGyroJerk-mean()-Z"           "TimeBodyAccMag-mean()"              
[19] "TimeGravityAccMag-mean()"            "TimeBodyAccJerkMag-mean()"          
[21] "TimeBodyGyroMag-mean()"              "TimeBodyGyroJerkMag-mean()"         
[23] "FrequencyBodyAcc-mean()-X"           "FrequencyBodyAcc-mean()-Y"          
[25] "FrequencyBodyAcc-mean()-Z"           "FrequencyBodyAcc-meanFreq()-X"      
[27] "FrequencyBodyAcc-meanFreq()-Y"       "FrequencyBodyAcc-meanFreq()-Z"      
[29] "FrequencyBodyAccJerk-mean()-X"       "FrequencyBodyAccJerk-mean()-Y"      
[31] "FrequencyBodyAccJerk-mean()-Z"       "FrequencyBodyAccJerk-meanFreq()-X"  
[33] "FrequencyBodyAccJerk-meanFreq()-Y"   "FrequencyBodyAccJerk-meanFreq()-Z"  
[35] "FrequencyBodyGyro-mean()-X"          "FrequencyBodyGyro-mean()-Y"         
[37] "FrequencyBodyGyro-mean()-Z"          "FrequencyBodyGyro-meanFreq()-X"     
[39] "FrequencyBodyGyro-meanFreq()-Y"      "FrequencyBodyGyro-meanFreq()-Z"     
[41] "FrequencyBodyAccMag-mean()"          "FrequencyBodyAccMag-meanFreq()"     
[43] "FrequencyBodyAccJerkMag-mean()"      "FrequencyBodyAccJerkMag-meanFreq()" 
[45] "FrequencyBodyGyroMag-mean()"         "FrequencyBodyGyroMag-meanFreq()"    
[47] "FrequencyBodyGyroJerkMag-mean()"     "FrequencyBodyGyroJerkMag-meanFreq()"
[49] "TimeBodyAcc-std()-X"                 "TimeBodyAcc-std()-Y"                
[51] "TimeBodyAcc-std()-Z"                 "TimeGravityAcc-std()-X"             
[53] "TimeGravityAcc-std()-Y"              "TimeGravityAcc-std()-Z"             
[55] "TimeBodyAccJerk-std()-X"             "TimeBodyAccJerk-std()-Y"            
[57] "TimeBodyAccJerk-std()-Z"             "TimeBodyGyro-std()-X"               
[59] "TimeBodyGyro-std()-Y"                "TimeBodyGyro-std()-Z"               
[61] "TimeBodyGyroJerk-std()-X"            "TimeBodyGyroJerk-std()-Y"           
[63] "TimeBodyGyroJerk-std()-Z"            "TimeBodyAccMag-std()"               
[65] "TimeGravityAccMag-std()"             "TimeBodyAccJerkMag-std()"           
[67] "TimeBodyGyroMag-std()"               "TimeBodyGyroJerkMag-std()"          
[69] "FrequencyBodyAcc-std()-X"            "FrequencyBodyAcc-std()-Y"           
[71] "FrequencyBodyAcc-std()-Z"            "FrequencyBodyAccJerk-std()-X"       
[73] "FrequencyBodyAccJerk-std()-Y"        "FrequencyBodyAccJerk-std()-Z"       
[75] "FrequencyBodyGyro-std()-X"           "FrequencyBodyGyro-std()-Y"          
[77] "FrequencyBodyGyro-std()-Z"           "FrequencyBodyAccMag-std()"          
[79] "FrequencyBodyAccJerkMag-std()"       "FrequencyBodyGyroMag-std()"         
[81] "FrequencyBodyGyroJerkMag-std()" 

## The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency

## Notes:

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

## Cleaning process:

Prepare: Download dataset, read all files in the dataset package to understand the whole context.
Step 1: Read data into R, used head(), str() to get a general idea about the data;
Step 2: Edited column names;
Step 3: Merged dataset;
Step 4: Extracted only the measurements on the mean and standard deviation for each measurement;
Step 5: Edited descriptive variable names;
Step 6: Created a new tidy data.
