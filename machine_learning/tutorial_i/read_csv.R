# read the csv file into a data frame
subjects_info <- read.csv("~/college/machine_learning/tutorial_i/subjects.csv")

# print the output of str() function
str(subjects_info)

# print the output of summary() function
subjects_summary <- summary(subjects_info)
print(subjects_summary)
