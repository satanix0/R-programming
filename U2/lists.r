list1 <- list("Hello", "hi", c(1, 2, 3), TRUE, 12.34, 51.23)
list1
list_data <- list(c("Jan", "Feb", "Mar"), matrix(c(3, 9, 5, 2, -2, 8), nrow = 2), list(" green", 12.09))
list_data

#  assigns names to each element in list_data
names(list_data) <- c("1st Quarter", "A_Matrix", "A_inner_list")
print(list_data)

# prints out the second element of list_data, which is a matrix.
print(list_data[2])
# prints out the second element of the first element of list_data,
# which is "Feb".
print(list_data[[1]][2])
print(list_data[3])

#  prints out the element of list_data with the name "A_Matrix", which is a matrix.
print(list_data$A_Matrix)

# adds a new element to list_data.
list_data[4] <- "New Element"
list_data
# removes the fourth element from list_data.
list_data[4] <- NULL
list_data
# updates the third element of list_data.
list_data[3] <- "Updated Element"
print(list_data)
print(list_data[3])

list_data[2] <- NULL
list_data
list_data[1] <- "abc"
list_data

list1 <- list(1:5)
list1
list2 <- list(10:14)
list2

# if we do list1 + list2 it will give error mathematic operations can only be performed in vectors
# unlist() function to convertlist into vectors
v1 <- unlist(list1)
v1
v2 <- unlist(list2)
v2
result <- v1 + v2
result

data <- c("East", "North", "West", "East", "North", "West", "East", "North", "West")

is.factor(data)
factor_data <- factor(data)
factor_data

print(is.factor(factor_data))
# creates a new factor based on factor_data,
# but with the levels in a different order of elements.
new_order_data <- factor(factor_data, levels = c("East", "West", "North"))
new_order_data
