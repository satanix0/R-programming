# height <- c(182, 151, 162, 139, 166, 175, 122)
# weight <- c(48, 50, 54, 78, 69, 56, 52)
# gender <- c("Male", "Female", "Female", "Male", "Female", "Male", "Female")
# input_data <- data.frame(height, weight, gender, stringsAsFactors = FALSE)
# print(input_data)
# print(is.factor(input_data["gender"]))

# input_data <- data.frame(height, weight, gender, stringsAsFactors = TRUE)
# print(input_data)
# print(is.factor(input_data$Gender))

# # $ sign is used to access a particular column of the dataframe
# input_data$Gender

emp.data <- data.frame(
    emp_id = c(1:5),
    emp_name = c("Rick", "Dan", "Michelle", "Ryan", "Gary"),
    salary = c(623.3, 515.2, 611.0, 729.0, 843.25),
    start_date = as.Date(c("2012-01-01", "2013-09-25", "2014-11-15", "2014-05-11", "2015-03-27")),
    stringsAsFactors = FALSE
)
# Print the data frame
print(emp.data)
str((emp.data)) # structure
summary((emp.data)) # statistical summary
summary((emp.data$ emp_id))
print(emp.data$emp_id)
result <- data.frame(emp.data$emp_id, emp.data$salary)
result
emp.data

result <- emp.data[1:2, ] # first two row
result
emp.data
result <- emp.data[1:2, 4] # first 2 rows with 4 th column
result
result <- emp.data[2:4, 2]
result
result <- emp.data[c(2, 4), c(1, 3)]
result
emp.data
result <- emp.data[c(1, 5), c(2, 4)]
result

# Add the dept column
emp.data$dept <- c("IT", "Operations", "It", "HR", "Finance")
emp.data
str(emp.data)

emp.newdata <- data.frame(
    emp_id = c(6:8),
    emp_name = c("Jane", "Larry", "Nadia"),
    salary = c(673.3, 785.2, 631.0),
    start_date = as.Date(c("2015-01-25", "2021-09-25", "2014-11-15")),
    dept = c("IT", "Operation", "Finance"),
    stringsAsFactors = FALSE
)

emp.final_data <- rbind(emp.newdata, emp.data)
emp.final_data
dept_id <- c(1:8)

emp.final_data <- cbind(emp.final_data, dept_id)
emp.final_data
