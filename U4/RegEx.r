library(stringr)

ch <- c(
    "Big Data",
    "is there any solution?",
    ".[{(^$|?*+/",
    "apsaggu.wordpress.com",
    "321-555-4321",
    "123.555.1234",
    "123*555*1234"
)

# Extract periods (.) from the strings
str_extract_all(ch, "\\.")

# 1.  . = Matches Any Character


# Extract all the digits (1-9) from the string
# 2. \d = Digit (0–9)
str_extract_all(ch, pattern = "\\d")
str_extract_all(ch, pattern = "\\d\\d\\d.\\d\\d\\d.\\d\\d\\d\\d")
# or in short
str_extract_all(ch, pattern = "\\d{3}.\\d{3}.\\d{4}")
# only returns those with [.,-] seperators
str_extract_all(ch, pattern = "\\d{3}[-.]\\d{3}[.-]\\d{4}")



# 3. \D = Not a digit (0–9)
str_extract_all(ch, pattern = "\\D")

# 4. \w = Word Character (a-z, A-Z, 0–9, _)
str_extract_all(ch, pattern = "\\w")

# 5. \W = Not a word (special chars) character
str_extract_all(ch, pattern = "\\W")

# 6. \s = White space (space, tab, newline)


# 7. \S = Not white space (space, tab, newline)

# 8. \b = Word Boundary
st <- "This is Bliss"
str_extract_all(st, pattern = "\\bis")

# 9. \B = Not a word boundary
st <- "This is Bliss"
str_extract_all(st, pattern = "\\Bis")

# 10. ^ = Beginning of a string
sts <- c(
    "This is me",
    "That's my channel",
    "Unboxing Big Data!"
)
# Finds the sentences that end with the 'This'
str_extract_all(sts, pattern = "^This")
sts[str_detect(string = sts, pattern = "^This")]

sts[str_detect(string = sts, pattern = "^T")]

# 11. $ = End of a String
sts <- c(
    "This is me",
    "That's my channel",
    "Unboxing Big Data!"
)
# Finds the sentences that end with the !
str_extract_all(string = sts, pattern = "!$")
sts[str_detect(string = sts, pattern = "!$")]


# 12. [] = matches characters or brackets
# Extract every string that contain anything in between 2-4
str_extract_all(string = ch, pattern = "[B]")

# 13. [^ ] = matches characters Not in brackets

# 14. | = Either Or

# 15. ( ) = Group

# 16. *= 0 or more

# 17. + = 1 or more

# 18. ? = Yes or No

# 19. {x} = Exact Number

# 20. {x, y} = Range of Numbers (Maximum, Minimum)
