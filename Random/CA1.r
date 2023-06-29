# input number of notes for each type
# run each line one by one
n_100 <- as.integer(readline("Enter the No. of Notes of 100: "))
n_500 <- as.integer(readline("Enter the No. of Notes of 500: "))
n_2000 <- as.integer(readline("Enter the No. of Notes of 2000: "))

# calculating total amount withdrawn
if (n_100 <= 0 || n_500 <= 0 || n_2000 <= 0) {
    print("Invalid Input")
} else {
    total <- n_100 * 100 + n_500 * 500 + n_2000 * 2000
    print(paste("Total amount withdrawn: Rs.", total))
}


available_balance <- as.integer(readline("Enter the Available Balance in Your a/c: "))
withdraw_amount <- as.integer(readline("Enter the Amt. you want to withdraw: "))
cashWithdraw <- function(available_balance = 0, withdraw_amount = 0) {
    if (available_balance <= 1500) {
        print("Available Balance Should be greater than 1500")
    } else if (withdraw_amount > 1000) {
        print("Withdrawl amt. should be less than 1000")
    } else {
        print("Money Withdrawn Successfully")
    }
}

cashWithdraw(available_balance, withdraw_amount)



df <- read.csv("StudentsPerformance.csv")
str(df)
# a)	Find the minimum reading score for the given dataset.
min(df$reading.score)

# b) Find the number of levels present in the race.ethnicity.
rac <- factor(df$race.ethnicity)
# c) Find the reading.score of the students whose lunch is standard and gender is male.
x <- subset(df, subset = (gender == "male" & lunch == "standard"))
print(x)
