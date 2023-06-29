# The sole purpose of the tidyr package is to
# simplify the process of
# creating tidy data.
# install.packages("tidyverse")
# or
# install.packages("tidyr")
# load the tidyr package
library(tidyr)
n <- 10
# creating a data frame
tidy_dataframe <- data.frame(
    S_No = c(1:n),
    Group.1 = c(
        23, 345, 76, 212, 88,
        199, 72, 35, 90, 265
    ),
    Group.2 = c(
        117, 89, 66, 334, 90,
        101, 178, 233, 45, 200
    ),
    Group.3 = c(
        29, 101, 239, 289, 176,
        320, 89, 109, 199, 56
    )
)
# print the elements of the data frame
tidy_dataframe

# 1. gather() function: It takes multiple columns and
# gathers them into key-value pairs.
# Basically it makes "wide" data to long data.
# using gather() function on tidy_dataframe
long <- tidy_dataframe %>%
    gather(
        Group, Frequency,
        Group.1:Group.3
    )
long

# 2. separate() function: It converts longer data to a wider format.
# The separate() function turns a single character column into multiple
# columns.
separate_data <- long %>% separate(
    col = "Group",
    into = c(
        "Allotment",
        "Number"
    )
)
separate_data

# 3. unite() function: It merges two columns into one column.
# The unite() function is a convenience function to paste together
# multiple variable values into one. In essence, it combines two
# variables of a single observation into one variable.
# use unite() function to glue Allotment and Number columns
unite_data <- separate_data %>%
    unite(
        col = "Group",
        c(
            Allotment,
            Number
        ),
        sep = "^"
    ) # Unite simply concatenates Allotment and Number with separator as (.)
# in a new Column Group
unite_data

# 4. spread() function: It helps in reshaping a longer format to a
# wider format. The spread() function spreads a key-value pair across
# multiple columns.
# use unite() function to make data wider
back_to_wide <- unite_data %>%
    spread(key = Group, value = Frequency)
back_to_wide

# 5. nest() function: It creates a list of data frames containing
# all the nested variables.
df <- tidy_dataframe
df
# nest column Group.1 in
# tidy_dataframe using nest()
df %>% nest(data = c(Group.1))
# 6. unnest() function: It basically reverses the
# nest operation. It makes each element of the list its own row.
df %>% unnest(Group.1)
df1 <- iris
names(iris)

# nesting the species column in
# the df data frame using nest()
head(df1 %>% nest(data = c(Species))) # Output (i)
# unnesting the species column
# in the df data frame using unnest()
head(df1 %>% unnest(Species)) # Output (ii)

# 7. fill() function: Used to fill in the missing values in selected
# columns using the previous entry.
df2 <- data.frame(
    Month = 1:6,
    Year = c(2000, rep(NA, 5))
)

df2 # Output (i)
# use fill() to fill missing values in
# Year column in df data frame
df2 %>% fill(Year) # Output (ii)


# 8. full_seq() function: It basically fills the missing values in
# a vector which should have been observed but weren't.
# The vector should be numeric.
# creating a numeric vector
num_vec <- c(1, 6, 10, 14, 18, 20)
num_vec
# use full_seq() to fill missing
# values in num_vec
full_seq(num_vec, 1)
x <- c(1, 4, 9)
full_seq(x, 1)

# 9. drop_na() function: This function drops rows containing
# missing values.
# create a tibble df with missing values
df3 <- data.frame(
    S.No = c(1:10),
    Name = c(
        "John", "Smith", "Peter",
        "Luke", "King", rep(NA, 5)
    )
)
# print df tibble
df3
# use drop_na() to drop columns
# in df with missing values
df3 %>% drop_na(Name)
df <- data.frame(x = 1:3, y = c(1, rep(NA, 2)))
df
df %>% drop_na(y)

# 10. replace_na() function: It replaces missing values.
df4 <- data.frame(
    S.No = c(1:10),
    Name = c(
        "John", "Smith",
        "Peter", "Luke",
        "King", rep(NA, 5)
    )
)
df4
# use replace_na() to replace missing values or na
df4 %>% replace_na(list(Name = "Henry"))
