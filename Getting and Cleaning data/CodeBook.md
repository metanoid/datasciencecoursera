CodeBook
--------------

This file describes the comma separated data in the file "Samsung.txt".

The original data is from here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The subject, x, and y files from both the test and train folders were merged to recreate the full dataset.

Some unimportant variables were dropped.

The following variables were created:

1. SubjectID - ID of the Subject

2. Activity - Descriptive label applied to the motion of the subject

3. tBodyAccMag-mean() - Mean of the tBodyAccMag-mean() variable in the full dataset, split by SubjectID and Activity

4. tBodyAccMag-std() - Mean of the tBodyAccMag-std() variable in the full dataset, split by SubjectID and Activity                   

5. tGravityAccMag-mean() - Mean of the tGravityAccMag-mean() variable in the full dataset, split by SubjectID and Activity

6. tGravityAccMag-std() - Mean of the tGravityAccMag-std() variable in the full dataset, split by SubjectID and Activity             

7. tBodyAccJerkMag-mean() - Mean of the tBodyAccJerkMag-mean() variable in the full dataset, split by SubjectID and Activity

8. tBodyAccJerkMag-std() - Mean of the tBodyAccJerkMag-std() variable in the full dataset, split by SubjectID and Activity           

9. tBodyGyroMag-mean() - Mean of the tBodyGyroMag-mean() variable in the full dataset, split by SubjectID and Activity             

10. tBodyGyroMag-std() - Mean of the tBodyGyroMag-std() variable in the full dataset, split by SubjectID and Activity                  

11. tBodyGyroJerkMag-mean() - Mean of the tBodyGyroJerkMag-mean() variable in the full dataset, split by SubjectID and Activity        

12. tBodyGyroJerkMag-std() - Mean of the tBodyGyroJerkMag-std() variable in the full dataset, split by SubjectID and Activity         

13. fBodyAccMag-mean() - Mean of the fBodyAccMag-mean() variable in the full dataset, split by SubjectID and Activity           

14. fBodyAccMag-std() - Mean of the fBodyAccMag-std() variable in the full dataset, split by SubjectID and Activity                   

15. fBodyBodyAccJerkMag-mean() - Mean of the fBodyBodyAccJerkMag-mean() variable in the full dataset, split by SubjectID and Activity

16. fBodyBodyAccJerkMag-std() - Mean of the fBodyBodyAccJerkMag-std() variable in the full dataset, split by SubjectID and Activity   

17. fBodyBodyGyroMag-mean() - Mean of the fBodyBodyGyroMag-mean() variable in the full dataset, split by SubjectID and Activity     

18. fBodyBodyGyroMag-std() - Mean of the fBodyBodyGyroMag-std() variable in the full dataset, split by SubjectID and Activity         

19. fBodyBodyGyroJerkMag-mean() - Mean of the fBodyBodyGyroJerkMag-mean() variable in the full dataset, split by SubjectID and Activity

20. fBodyBodyGyroJerkMag-std() - Mean of the fBodyBodyGyroJerkMag-std() variable in the full dataset, split by SubjectID and Activity