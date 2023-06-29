# Rules for strings: Valid Strings
a <- "Start and end with single quote"
print(a)

b <- "Start and end with double quotes"
print(b)

c <- "single quote ' in between double quotes"
print(c)

d <- 'Double quotes " in between single quote'
d

################################################
# Invalid Strings
# e <- 'Mixed quotes"
print(e)

# f <- 'Single quote ' inside single quote'
print(f)

# g <- "Double quotes " inside double quotes"
print(g)


##################################################
# paste(): Many strings in R are combined using the paste() function.
# It can take any number of arguments to be combined together. sep=" " by default.
print(paste("Jan", "Feb", "March", "April"))

a <- "hello"
b <- "how"
c <- "are"
d <- "you"
e <- "Fine Thankyou"
print(paste(a, b, c, d, e, sep = " "))
print(paste(a, b, c, d))
print(paste(a, b, c, d, sep = " & "))
print(paste(a, b, c, d, e, sep = " ", collapse = ""))
# remove the space in adjacent lines


###########################################################
# format(): Numbers and strings can be formatted to a specific style using
# format() function.

# Format treats everything as a string.
result <- format(6)
print(result)

# Total number of digits displayed. Last digit rounded off.
result <- format("23.123456789   ", digits = 9)
print(result) # a String
result <- round(23.123456789, digits = 9)
print(result) # a integer


# Display numbers in scientific notation.
result <- format(c(6, 13.14521), scientific = TRUE)
print(result)

# The minimum number of digits to the right of the decimal point.
result <- format(23.21, nsmall = 6)
print(result)
format(1.4, nsmall = 5)

# padding of blank is added in the beginning for specified width.
result <- format(1.7, width = 4)
print(result)

?format

# Left justify strings.
result <- format("Hello", width = 6, justify = "l")
print(result)

# Justfy string with center.
result <- format("Hello", width = 7, justify = "c")
print(result)

# Justfy string with right.
result <- format("Hello", width = 7, justify = "r")
print(result)

###################################################
# nchar(): This function counts the number of characters
# including spaces in a string
result <- nchar("Count the number of characters")
print(result)
nchar("R Programming $$$")

#####################################################
# toupper() and tolower(): These functions change the case of
# characters of a string Changing to Upper case.
result <- toupper("Changing To Upper")
print(result)
# Changing to lower case.
result <- tolower("Changing To Lower")
print(result)

#############################################
# substring(): This function extracts parts of a String
# Extract characters from 5th to 7th position.
result <- substring("Extract", 3:5, 7)
print(result)
result <- substr("DATASCIENCE", start = 3:6, stop = 9)
result

############################################
# sprintf(): This function makes of the formatting commands that
# are styled after C.
sprintf("%s scored %.2f percent", "Matthew", 72.3)

#############################################
# strsplit(): It splits the sentence into words
str <- "Splitting sentence into words"
strsplit(str, split = " ")

##########################################
# The sub() function will replace the first occurrence leaving the other as it is.
# On the other hand, the gsub() function will replace all the strings or values with
# the input strings.
df <- "i love R programming and R programs"
sub("R", "C", df)
gsub("R", "C", df)

# chartr(old,new,str)
chartr(old = "love", new = "Love", x = df)

a <- "Welcome to the World of programmers!"
gsub("o", "I", a)
gsub("O", "I", a)


# ====== String Abbreviations ======
citynames <- c("Auckland", "Wellington", "bangalore", "hyderabad")
abbreviate(citynames)

abbreviate(state.name)
state.abb # only works for US states

# ====== String Equality ======
# USE identical() to check if two strings are equal or not
a <- c("LA", "NY", "NV")
b <- c("LA", "LO", "NV")
d <- c("LA", "NY", "NV")

identical(a, b)
identical(a, d)
identical(b, d)



