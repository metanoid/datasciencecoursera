README
-----------

## Steps performed to create tidy data set
* Load in test data (Subject, x, y)
* Load in train data (Subject, x, y)
* Update the column names to be descriptive names
* Merge all files into a single data frame
* Find all columns representing means or standard deviations, remove other columns
 + These are the columns whose names end in "mean()" or "std()"
* Get Activity names from Activity ID's
* Find average of each variable per Activity per Subject
* Write this output to a file called Samsung.txt
* Write the "narrow" form of this output to a file called "SamsungNarrow.txt", for easier reading on browsers

To recreate the data, run the "run_analysis.R" file in a directory which contains the Samsung data


