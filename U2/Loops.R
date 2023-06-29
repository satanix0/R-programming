# While - Loop
i <- 1
while (i <= 10) {
    print(paste(i, "Using While", sep = " "))
    i <- i + 1
}


# For Loop
for (i in 10:-1) {
    print(paste(i, "using For", sep = " "))
}

# printing a vector using for
x <- c(12, 15, 36, 56)
for (i in x) print(i)

y <- matrix(1:6, 36, 56)
for (i in seq_len(nrow(y))) {
    for (j in seq_len(ncol(y))) {
        print(y[i, j])
    }
}
