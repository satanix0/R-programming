# lists are a powerful data structure in R that can be used to store complex,heterogeneous data.
# They are particularly useful when working with data that does not fit into a single data type,
# or when creating complex objects like models or simulations
# that require many different types of data to be stored together.


mylist <- list(a = 1:5, b = matrix(1:9, nrow = 3), y = c("a", "b", "c"))
print(mylist)

# a list can contain another list as well.
mylist2 <- list(list(a = 1:5, b = "hello"), c("a", "b", "c"))
names(mylist2) <- c("nested_list", "inner_vector")
print(mylist2)
print(mylist2$nested_list) # nested list
print(mylist2$nested_list$b) # accessing inner_list's element



# Create a list with four elements
my_list <- list(
    name = "John Smith",
    age = 30,
    hobbies = c("reading", "hiking", "cooking"),
    address = list(
        street = "123 Main St",
        city = "Anytown",
        state = "CA",
        zip = "12345"
    )
)

# Print the list
my_list

# Access elements by name or index
my_list$name # "John Smith"
my_list[[2]] # 30
my_list$hobbies # c("reading", "hiking", "cooking")
my_list$address # a nested list with elements street, city, state, and zip

# Add a new element to the list
my_list$occupation <- "data analyst"

# Modify an existing element
my_list$age <- 31

# Print the modified list
print(my_list)
print(my_list[[4]])


list_data3 <- list(c(1, 2, 3), 4.5, 21L, "Hello")
length(list_data3)
list_data3[[2]] <- NULL
length(list_data3)
print(list_data3)

v1 <- unlist(list_data3)
print(v1)
