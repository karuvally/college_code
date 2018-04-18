# basic details
subject_name <- c("John Doe", "Jane Doe", "Steve Graves")
temperature <- c(98.1, 98.6, 101.4)
flu_status <- c(FALSE, FALSE, TRUE)
gender <- factor(c("Male", "Female", "Male"))
blood <- factor(c("O", "AB", "A"), levels=c("A", "B", "AB", "O"))

# creating a list
jane_details <- list(subject_name[2], temperature[2], flu_status[2],
                     gender[2], blood[2])

# creating a table, ie. a data frame
info_table = data.frame("Name" = subject_name, "Temperature" = temperature,
                        "Flu Status" = flu_status, "Gender" = gender,
                        "Blood Group" = blood)

