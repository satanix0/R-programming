library(dplyr)
# Create a data frame with missing data

d <- data.frame(
    name = c("A", "B", "C", "D"),
    age = c(7, 5, 9, 16),
    ht = c(46, NA, NA, 69),
    school = c("yes", "yes", "no", "no")
)
d

# 1. filter() for choosing cases and using their values as a base
# for doing so
x <- d %>% filter(is.na(ht)) # %>% is forward pipe operator
x
# Finding Rows with No NA values
d %>% filter(!is.na(ht))

# %in% is used to check membership
d %>% filter(name %in% c("C", "A"))
# multiple conditions
d %>% filter(age == 9 | school == "yes")

# 2. arrange(): For re-ordering of the cases.
# Arranging data frame rows according to the age
d_name <- d %>% arrange(age)
print(d_name)
# or, similarly
d_name <- arrange(d, desc(age))
print(d_name)

# 3. select() and rename() for choosing variables and
# using as a base for doing so
d
select(d, age) # selects only age
select(d, -age) # selects everything apart from age
# startswith() function to print only 'ht' data
select(d, starts_with("ht"))
# -startswith() function to print everything except 'ht' data
select(d, -starts_with("ht"))
# printing columns 1 to 2
select(d, 1:2)
# printing data of column heading containing 'a'
select(d, contains("a"))
# printing data of column heading which matches 'na'
select(d, matches("na"))

# use of rename()
renamed <- rename(x, height = ht)
names(renamed)

# 4. mutate() and transmute(): Addition of new variables
# mutate() returns all the columns along with the new column
mutate(d, x3 = ht + age)
# calculating a variable x3 which is sum of height and age printing
# wihout ht and age
# transmute only returns the new column
transmute(d, x3 = ht + age)


# 5. summarise(): Condensing various values to one value

#  calculating mean of age
summarise(d, mean = mean(age)) # mean here is just a variable
summarise(d, mean(age))
mean(d$age) # same result

#  calculating minimum of age
summarise(d, min(age))
#  calculating maximum of age
summarise(d, max(age))

#  calculating median of age
summarise(d, med = median(age)) # med is just a variable


# 6. sample_n() and sample_frac(): for taking random tuples
# sample_n selects n random values
sample_n(d, 3)
# sample_n selects % of random values
sample_frac(d, 0.50)

# group_by function
mtcars %>%
    group_by(cyl) %>%
    summarise(n())

mtcars
