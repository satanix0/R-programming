count <- 0
n <- 1000
for (i in rnorm(n)) {
    if (-1 >= i && i <= 1) {
        count <- count + 1
    }
}
print(paste((count / n) * 100, "%", sep = ""))
