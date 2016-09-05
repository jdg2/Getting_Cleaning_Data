  
#assumes that you have downloaded the folder already and have placed
#it into the working directory and unzipped

  library(dplyr) #required package for mutate function
  library(reshape2) #required for melt/dcast

  #if the data not downloaded already, hyperlink below
  #source: "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  
# 1) read in all of the files and merge into on dataset

  features<-read.table("UCI HAR Dataset/features.txt")
  activity_labels<-read.table("UCI HAR Dataset/activity_labels.txt")
  X_train<-read.table("UCI HAR Dataset/train/X_train.txt")
  y_train<-read.table("UCI HAR Dataset/train/y_train.txt")
  subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")
  X_test<-read.table("UCI HAR Dataset/test/X_test.txt")
  y_test<-read.table("UCI HAR Dataset/test/y_test.txt")
  subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")

#name column with consistent names descriptive names
  colnames(activity_labels)<-c("ActivityId","ActivityName")
  colnames(subject_train)<-"SubjectId"
  colnames(X_train)<-features[,2]
  colnames(y_train)<-"ActivityId"
  colnames(subject_test)<-"SubjectId"
  colnames(X_test)<-features[,2]
  colnames(y_test)<-"ActivityId"
  
#combine datasets  
  train_compiled<-cbind(subject_train,y_train,X_train)  
  test_compiled<-cbind(subject_test,y_test,X_test)
  all_compiled<-rbind(train_compiled,test_compiled)

# 2) select only columns containing a mean or standard deviation  
    
  selected_compiled<-all_compiled[,grepl("(mean\\(\\))|(std\\(\\))|(activityid)|(subjectid)",tolower(colnames(all_compiled)))]
 
# 3) use descriptive activity names
  
  # pull in activity names to replace activity id's
  
  selected_compiled<-mutate(selected_compiled, ActivityId = activity_labels[match(selected_compiled$ActivityId,activity_labels$ActivityId),2])

# 4) replace variable names in columns with more descriptive/clean names
    #all words start with capital letter and abbreviations changed to full word
  
  colnames(selected_compiled)<-gsub("\\(\\)","",colnames(selected_compiled))                #remove parentheses
  colnames(selected_compiled)<-gsub("mean","Mean",colnames(selected_compiled))              #change all mean to uppercase
  colnames(selected_compiled)<-gsub("std","StdDev",colnames(selected_compiled))             #change std to StdDev
  colnames(selected_compiled)<-gsub("[Mm]ag","Magnitude",colnames(selected_compiled))       #Change mag/Mag to Magnitude
  colnames(selected_compiled)<-gsub("[Aa]cc","Accelerometer",colnames(selected_compiled))   #Change to Accelerometer
  colnames(selected_compiled)<-gsub("[Gg]yro","Gyroscope",colnames(selected_compiled))      #change to Gyroscope
  colnames(selected_compiled)<-gsub("BodyBody","Body",colnames(selected_compiled))          #remove duplicate word
  colnames(selected_compiled)<-gsub("^f","Frequency",colnames(selected_compiled))           #change to Frequency
  colnames(selected_compiled)<-gsub("^t","Time",colnames(selected_compiled))                #change to Time
    
# 5) summarize by mean each variable by activity and subject 
  
  melted<-melt(selected_compiled, id = c("SubjectId","ActivityId"))
  tidy_table<-dcast(melted, SubjectId + ActivityId ~ variable, mean)  
  write.table(tidy_table,"tidy_table.txt",row.names = FALSE, sep = ",") #write a comma separated text file
  