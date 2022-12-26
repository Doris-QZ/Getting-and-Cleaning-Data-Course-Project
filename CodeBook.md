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

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are:
- mean(): Mean value
- std(): Standard deviation
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency

## Variables list

[1] "Activity"                           
[2] "SubjectID"                          
[3] "TimeBodyAcc-mean()-X"                
[4] "TimeBodyAcc-mean()-Y"               
[5] "TimeBodyAcc-mean()-Z"                
[6] "TimeGravityAcc-mean()-X"            
[7] "TimeGravityAcc-mean()-Y"             
[8] "TimeGravityAcc-mean()-Z"            
[9] "TimeBodyAccJerk-mean()-X"            
[10] "TimeBodyAccJerk-mean()-Y"           
[11] "TimeBodyAccJerk-mean()-Z"            
[12] "TimeBodyGyro-mean()-X"              
[13] "TimeBodyGyro-mean()-Y"               
[14] "TimeBodyGyro-mean()-Z"              
[15] "TimeBodyGyroJerk-mean()-X"           
[16] "TimeBodyGyroJerk-mean()-Y"          
[17] "TimeBodyGyroJerk-mean()-Z"           
[18] "TimeBodyAccMag-mean()"              
[19] "TimeGravityAccMag-mean()"            
[20] "TimeBodyAccJerkMag-mean()"          
[21] "TimeBodyGyroMag-mean()"              
[22] "TimeBodyGyroJerkMag-mean()"         
[23] "FrequencyBodyAcc-mean()-X"           
[24] "FrequencyBodyAcc-mean()-Y"          
[25] "FrequencyBodyAcc-mean()-Z"           
[26] "FrequencyBodyAcc-meanFreq()-X"      
[27] "FrequencyBodyAcc-meanFreq()-Y"       
[28] "FrequencyBodyAcc-meanFreq()-Z"      
[29] "FrequencyBodyAccJerk-mean()-X"       
[30] "FrequencyBodyAccJerk-mean()-Y"      
[31] "FrequencyBodyAccJerk-mean()-Z"       
[32] "FrequencyBodyAccJerk-meanFreq()-X"  
[33] "FrequencyBodyAccJerk-meanFreq()-Y"   
[34] "FrequencyBodyAccJerk-meanFreq()-Z"  
[35] "FrequencyBodyGyro-mean()-X"          
[36] "FrequencyBodyGyro-mean()-Y"         
[37] "FrequencyBodyGyro-mean()-Z"          
[38] "FrequencyBodyGyro-meanFreq()-X"     
[39] "FrequencyBodyGyro-meanFreq()-Y"      
[40] "FrequencyBodyGyro-meanFreq()-Z"     
[41] "FrequencyBodyAccMag-mean()"          
[42] "FrequencyBodyAccMag-meanFreq()"     
[43] "FrequencyBodyAccJerkMag-mean()"      
[44] "FrequencyBodyAccJerkMag-meanFreq()" 
[45] "FrequencyBodyGyroMag-mean()"         
[46] "FrequencyBodyGyroMag-meanFreq()"    
[47] "FrequencyBodyGyroJerkMag-mean()"     
[48] "FrequencyBodyGyroJerkMag-meanFreq()"
[49] "TimeBodyAcc-std()-X"                 
[50] "TimeBodyAcc-std()-Y"                
[51] "TimeBodyAcc-std()-Z"                 
[52] "TimeGravityAcc-std()-X"             
[53] "TimeGravityAcc-std()-Y"              
[54] "TimeGravityAcc-std()-Z"             
[55] "TimeBodyAccJerk-std()-X"             
[56] "TimeBodyAccJerk-std()-Y"            
[57] "TimeBodyAccJerk-std()-Z"             
[58] "TimeBodyGyro-std()-X"               
[59] "TimeBodyGyro-std()-Y"                
[60] "TimeBodyGyro-std()-Z"               
[61] "TimeBodyGyroJerk-std()-X"            
[62] "TimeBodyGyroJerk-std()-Y"           
[63] "TimeBodyGyroJerk-std()-Z"            
[64] "TimeBodyAccMag-std()"               
[65] "TimeGravityAccMag-std()"             
[66] "TimeBodyAccJerkMag-std()"           
[67] "TimeBodyGyroMag-std()"               
[68] "TimeBodyGyroJerkMag-std()"          
[69] "FrequencyBodyAcc-std()-X"            
[70] "FrequencyBodyAcc-std()-Y"           
[71] "FrequencyBodyAcc-std()-Z"            
[72] "FrequencyBodyAccJerk-std()-X"       
[73] "FrequencyBodyAccJerk-std()-Y"        
[74] "FrequencyBodyAccJerk-std()-Z"       
[75] "FrequencyBodyGyro-std()-X"           
[76] "FrequencyBodyGyro-std()-Y"          
[77] "FrequencyBodyGyro-std()-Z"           
[78] "FrequencyBodyAccMag-std()"          
[79] "FrequencyBodyAccJerkMag-std()"       
[80] "FrequencyBodyGyroMag-std()"         
[81] "FrequencyBodyGyroJerkMag-std()"  


## Notes:

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.


## Cleaning process:

Prepare: Download dataset, read all files in the dataset package to understand the whole context.
- Step 1: Read data into R, used head(), str() to get a general idea about the data;
- Step 2: Edited column names;
- Step 3: Merged dataset;
- Step 4: Extracted only the measurements on the mean and standard deviation for each measurement;
- Step 5: Edited descriptive variable names;
- Step 6: Created a new tidy data.
