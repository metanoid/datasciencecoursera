##load data

#setwd("your working directory here")

cwd = getwd()

#Load in test data (Subject, x, y)
setwd(paste(cwd,"/UCI HAR Dataset/test", sep = ""))
subject_test = read.table("subject_test.txt")
x_test = read.table("x_test.txt")
y_test = read.table("y_test.txt")

# Load in train data (Subject, x, y)
setwd(paste(cwd,"/UCI HAR Dataset/train", sep = ""))
subject_train = read.table("subject_train.txt")
x_train = read.table("x_train.txt")
y_train = read.table("y_train.txt")

setwd(paste(cwd,"/UCI HAR Dataset", sep = ""))
features = read.table("features.txt", stringsAsFactor = FALSE)
activity_labels = read.table("activity_labels.txt",stringsAsFactor = FALSE)

setwd(cwd)

# Update the column names to be descriptive names
colnames(x_test) = features[,2]
colnames(x_train) = features[,2]
colnames(y_test) = "Activity"
colnames(y_train) = "Activity"
colnames(subject_test) = "SubjectID"
colnames(subject_train) = "SubjectID"

#Merge all files into a single data frame
UCI = rbind(cbind(x_test,y_test,subject_test),cbind(x_train,y_train,subject_train))

# Find all columns representing means or standard deviations, remove other columns
# These are the columns whose names end in "mean()" or "std()"
required = substr(features[,2],nchar(features[,2]) - 5,nchar(features[,2])) == "mean()" | 
  substr(features[,2],nchar(features[,2]) - 4,nchar(features[,2])) == "std()"
UCI_slim = UCI[,c(required,TRUE,TRUE)]

# Get Activity names from Activity ID's
UCI_slim$Activity = activity_labels[match(UCI_slim$Activity,activity_labels[,1]),2]

# Find average of each variable per Activity per Subject
melted = melt(UCI_slim,id.vars = c("SubjectID","Activity"))
UCI_summary = ddply(melted,.(SubjectID, Activity, variable),summarize, value = mean(value))
UCI_sum = dcast(UCI_summary, SubjectID + Activity ~ variable)

# Write this output to a file called Samsung.txt
write.csv(UCI_sum,file = "Samsung.txt", row.names = FALSE)

#Write the "narrow" form of this output to a file called "SamsungNarrow.txt", for easier reading on browsers
write.csv(UCI_summary,file = "SamsungNarrow.txt", row.names = FALSE)
