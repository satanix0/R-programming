bill <- 0

for (i in 1:7) {
    n <- as.numeric(readline(paste("Enter the number of pencils on ", i, "day")))
    if (n >= 0 && n <= 10) {
        while (n > 0) {
            pr <- as.numeric(readline(paste("Enter the price of pencil ", n)))
            bill <- bill + pr
            n <- n - 1
        }
    }
}
bill
