# CodeBook for Getting and Cleaning Data Course Project

## Variables and Data
The resulting tidy data set has 180 rows and 81 columns. The column or variable names are from left to right: activity, subject, and the 79 measurements on mean and standard deviation.
Each row contains the average of all 79 measurements for each unique activity and subject pair. There are 6 activities, namely: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING and there are 30 subjects. Therefore, there are 180 rows.

The 79 Measurements are:

 [1] "timeDomainBodyAccelerometerMeanX"                              
 [2] "timeDomainBodyAccelerometerMeanY"                              
 [3] "timeDomainBodyAccelerometerMeanZ"                              
 [4] "timeDomainBodyAccelerometerStandardDeviationX"                 
 [5] "timeDomainBodyAccelerometerStandardDeviationY"                 
 [6] "timeDomainBodyAccelerometerStandardDeviationZ"                 
 [7] "timeDomainGravityAccelerometerMeanX"                           
 [8] "timeDomainGravityAccelerometerMeanY"                           
 [9] "timeDomainGravityAccelerometerMeanZ"                           
[10] "timeDomainGravityAccelerometerStandardDeviationX"              
[11] "timeDomainGravityAccelerometerStandardDeviationY"              
[12] "timeDomainGravityAccelerometerStandardDeviationZ"              
[13] "timeDomainBodyAccelerometerJerkMeanX"                          
[14] "timeDomainBodyAccelerometerJerkMeanY"                          
[15] "timeDomainBodyAccelerometerJerkMeanZ"                          
[16] "timeDomainBodyAccelerometerJerkStandardDeviationX"             
[17] "timeDomainBodyAccelerometerJerkStandardDeviationY"             
[18] "timeDomainBodyAccelerometerJerkStandardDeviationZ"             
[19] "timeDomainBodyGyroscopeMeanX"                                  
[20] "timeDomainBodyGyroscopeMeanY"                                  
[21] "timeDomainBodyGyroscopeMeanZ"                                  
[22] "timeDomainBodyGyroscopeStandardDeviationX"                     
[23] "timeDomainBodyGyroscopeStandardDeviationY"                     
[24] "timeDomainBodyGyroscopeStandardDeviationZ"                     
[25] "timeDomainBodyGyroscopeJerkMeanX"                              
[26] "timeDomainBodyGyroscopeJerkMeanY"                              
[27] "timeDomainBodyGyroscopeJerkMeanZ"                              
[28] "timeDomainBodyGyroscopeJerkStandardDeviationX"                 
[29] "timeDomainBodyGyroscopeJerkStandardDeviationY"                 
[30] "timeDomainBodyGyroscopeJerkStandardDeviationZ"                 
[31] "timeDomainBodyAccelerometerMagnitudeMean"                      
[32] "timeDomainBodyAccelerometerMagnitudeStandardDeviation"         
[33] "timeDomainGravityAccelerometerMagnitudeMean"                   
[34] "timeDomainGravityAccelerometerMagnitudeStandardDeviation"      
[35] "timeDomainBodyAccelerometerJerkMagnitudeMean"                  
[36] "timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation"     
[37] "timeDomainBodyGyroscopeMagnitudeMean"                          
[38] "timeDomainBodyGyroscopeMagnitudeStandardDeviation"             
[39] "timeDomainBodyGyroscopeJerkMagnitudeMean"                      
[40] "timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation"         
[41] "frequencyDomainBodyAccelerometerMeanX"                         
[42] "frequencyDomainBodyAccelerometerMeanY"                         
[43] "frequencyDomainBodyAccelerometerMeanZ"                         
[44] "frequencyDomainBodyAccelerometerStandardDeviationX"            
[45] "frequencyDomainBodyAccelerometerStandardDeviationY"            
[46] "frequencyDomainBodyAccelerometerStandardDeviationZ"            
[47] "frequencyDomainBodyAccelerometerMeanFrequencyX"                
[48] "frequencyDomainBodyAccelerometerMeanFrequencyY"                
[49] "frequencyDomainBodyAccelerometerMeanFrequencyZ"                
[50] "frequencyDomainBodyAccelerometerJerkMeanX"                     
[51] "frequencyDomainBodyAccelerometerJerkMeanY"                     
[52] "frequencyDomainBodyAccelerometerJerkMeanZ"                     
[53] "frequencyDomainBodyAccelerometerJerkStandardDeviationX"        
[54] "frequencyDomainBodyAccelerometerJerkStandardDeviationY"        
[55] "frequencyDomainBodyAccelerometerJerkStandardDeviationZ"        
[56] "frequencyDomainBodyAccelerometerJerkMeanFrequencyX"            
[57] "frequencyDomainBodyAccelerometerJerkMeanFrequencyY"            
[58] "frequencyDomainBodyAccelerometerJerkMeanFrequencyZ"            
[59] "frequencyDomainBodyGyroscopeMeanX"                             
[60] "frequencyDomainBodyGyroscopeMeanY"                             
[61] "frequencyDomainBodyGyroscopeMeanZ"                             
[62] "frequencyDomainBodyGyroscopeStandardDeviationX"                
[63] "frequencyDomainBodyGyroscopeStandardDeviationY"                
[64] "frequencyDomainBodyGyroscopeStandardDeviationZ"                
[65] "frequencyDomainBodyGyroscopeMeanFrequencyX"                    
[66] "frequencyDomainBodyGyroscopeMeanFrequencyY"                    
[67] "frequencyDomainBodyGyroscopeMeanFrequencyZ"                    
[68] "frequencyDomainBodyAccelerometerMagnitudeMean"                 
[69] "frequencyDomainBodyAccelerometerMagnitudeStandardDeviation"    
[70] "frequencyDomainBodyAccelerometerMagnitudeMeanFrequency"        
[71] "frequencyDomainBodyAccelerometerJerkMagnitudeMean"             
[72] "frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation"
[73] "frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency"    
[74] "frequencyDomainBodyGyroscopeMagnitudeMean"                     
[75] "frequencyDomainBodyGyroscopeMagnitudeStandardDeviation"        
[76] "frequencyDomainBodyGyroscopeMagnitudeMeanFrequency"            
[77] "frequencyDomainBodyGyroscopeJerkMagnitudeMean"                 
[78] "frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation"    
[79] "frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency"

## Transformations
1. The source data zip file was downloaded from: 
   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2. Since the source data is a zip file, it was unzipped in the working directory.

3. The training and test data files were then read from the unzipped folder, obtaining the 6 individual data tables:

    3.1 The training data files
    x_train - having 7,352 observations(rows) and 561 variables(columns). The 561 columns are the 561 original measurements
    y_train - having 7,352 observations(rows) and 1 variable(column). This tells what is the activity for each observation.
    subject_train - having 7,352 observations(rows) and 1 variable(column). This tells who is the subject for each observation.

    3.2 The test data files
    x_test - having 2,947 observations(rows) and 561 variables(columns). The 561 columns are the 561 original measurements
    y_test - having 2,947 observations(rows) and 1 variable(column). This tells what is the activity for each observation.
    subject_test - having 2,947 observations(rows) and 1 variable(column). This tells who is the subject for each observation.

4. These 6 files were then merged into one data set having 10,299 observations(rows) and 563 variables(columns).

5. From the merged data set, only those columns or measurements on the mean and standard deviation are retained.

6. From the resulting data set of step 5, the activity variable(column) values were changed from activity ids to activity labels.

7. Simplify or make the variable(column) names easily understood by remove special characters and replacing abbreviations with full descriptions, like "Acc" to "Accelerometer", "Mag" to "Magnitude" and so on.

8. Finally, creates a new independent tidy data set with the average of each 79 measurements for each activity and subject. The new tidy data set, having 180 observations (rows) and 81 variables(columns) is stored in "tidy.txt" file.


