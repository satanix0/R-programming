n <- as.numeric(readline("Enter the Total Number of Students: "))

even <- c()
odd <- c()

if (n >= 10 && n <= 15) {
    while (n > 0) {
        if (n %% 2 == 0) {
            even <- c(even, n)
        } else {
            odd <- c(odd, n)
        }
        n <- n - 1
    }
}
odd
even
