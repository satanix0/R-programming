# 1: apply function
x <- matrix(c(1, 2, 3, 4), nrow = 3, ncol = 4, byrow = TRUE)
x
y <- apply(x, 1, sum) # 1 means = row
y
z <- apply(x, 2, sum) # 2 means = col
z

# alternatively,
colSums(x) # inbuild function for sum, col wise
rowSums(x) # inbuild function for sum, row wise


# 2: lapply -- apply on the list -- always returns a list
a <- list(
    A = c(8, 9, 7, 5),
    B = data.frame(
        x = 1:5,
        y = c(5, 1, 0, 2, 3)
    )
)

lapply(a, FUN = sum)

# another example
d <- 1:3
fun <- function(x) {
    x^2
}

fun(d)

a <- lapply(d, fun)
a


# 3: sapply -- simplified lapply
round(sapply(2:7, sqrt), 2)

# another example of sapply()
out <- numeric(length = 10)
out
for (i in 1:10) {
    out[i] <- i^2
}
out
sapply(1:20, function(i) i^2)

# another example of sapply()
l <- list(A = 1:5, B = 6:20, C = 1)
sapply(l, length)

# sapply() vs lapply():sapply() returns a vector, matrix or an array
# instead of a list. For example
sapply(c(3, 5, 7), exp) # returns a vectorr
lapply(c(3, 5, 7), exp) # returns a list


# 4: tapply() function tag apply() where groups are there
result <- data.frame(
    id = 1:4, name = c("Ed", "Pat", "Ned", "Jak"),
    marks = seq(20, 35, 5), section = c("A", "B", "A", "B")
)
result
id <- result$id
marks <- result$marks
section <- factor(result$section,
    labels = c("Sec A", "Sec B")
)
section
mean_marks <- tapply(marks, section, mean)
mean_marks

# mapply() multivariate apply : used to apply
# a function to multiple vectors or lists of vectors.
v1 <- c(1, 2, 3, 4, 5)
v2 <- c(2, 4, 1, 2, 10)
mapply(max, v1, v2)

# another example
v1 <- c(1, 2, 3, 4)
v2 <- c(2, 4, 6, 8)
v3 <- c(3, 6, 9, 12)
mapply(function(val1, val2, val3) val1 * val2 * val3, v1, v2, v3)

# another example
mapply(rep, 1:3, times = 5)