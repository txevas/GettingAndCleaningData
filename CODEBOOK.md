## Getting And Cleaning Data
###Course Project Codebook
  
The data structure of the output file must be:   
1.  subject id  
2.  name of the activity  
3.  name of the measured feature  
4.  average value  

Resulting dataset (tidy_data) after an execution:
<!-- -->
    > head(tidy_data)  
    Source: local data frame [6 x 4]  
    Groups: subject, activity  

          subject activity           feature mean(value)  
        1       1   LAYING tBodyAcc-mean()-X  0.22159824  
        2       1   LAYING tBodyAcc-mean()-Y -0.04051395  
        3       1   LAYING tBodyAcc-mean()-Z -0.11320355  
        4       1   LAYING  tBodyAcc-std()-X -0.92805647  
        5       1   LAYING  tBodyAcc-std()-Y -0.83682741  
        6       1   LAYING  tBodyAcc-std()-Z -0.82606140  


