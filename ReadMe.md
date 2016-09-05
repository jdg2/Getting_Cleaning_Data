#Getting And Cleaning Data Assignment

##Step 1 - Combine the Data
  *The data from the required tables is read into the R
    + it is assumed the file has already been downloaded and unzipped (this was not specified in directions)
  * The data is given the provided column names
  * The data is merged together
    +First training data is combined using cbind
    +Second test data is combiend using cbind
    +Third the two sets are combined using rbind

##Step 2 - Select only columns that contain a mean or standard deviation
  * Columns that contain the id variables(ActivityId, SubjectId) and columns containing a mean or StdDev are taken
    + a grepl is used to subset column names which contain keywords, these are then selected from the data
  
##Step 3 - Use descriptive activity names to name the activities
  *The mutate function in dplyr is used here to replace the Activityid column with the activity associated with the id present
    +the id is matched to the activity_labels data
    +For those familiar with Excel it is essentialy an index-match
  
##Step 4 - Appropriately label the data set with descriptive variable names
  *A series of gsub statements is used to clarify abbreviated names
  *All words start with an uppercase letter to make reading easier
  *gsub statements:
      +remove parentheses
      +change all mean to uppercase
      +change std to StdDev
      +Change mag/Mag to Magnitude
      +Change acc to Accelerometer
      +change gyr to Gyroscope
      +remove duplicate words (BodyBody)
      +change f to Frequency
      +change t to Time
      
##Step 5 - Create an independenttidy data set with the average of each variable by activity/subject
  *The reshape2 package is utilized for melt/dcast
    +The data is melted with the idvars SubjectId and ActivityId
    +The dcast function is called to get the means by SubjectId and Activity Id
  *Write.table is used to write a comma separated txt document named "tidy_table.txt"
  *The data is in tidy format because each variable is saved in its own column
    and each observation is in its own row