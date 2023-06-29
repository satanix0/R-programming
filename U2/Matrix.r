mtrx1 <- matrix(c(3:14), nrow = 6)
mtrx1
mtrx2 <- matrix(c(3:14), nrow = 4, byrow = TRUE)
mtrx2
mtrx3 <- matrix(c(3:14), nrow = 4, byrow = FALSE)
mtrx3

# for dimnames
a <- c("row1", "row2", "row3", "row4")
b <- c("col1", "col2", "col3")

p <- matrix(3:14, nrow = 4, byrow = TRUE, dimnames = list(a, b))
p
p[1, 3]
p[2, ]
p[, 3]



# Matrix Operation
matrix1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow = 2)
matrix1
matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), ncol = 3)
matrix2
result <- matrix1 + matrix2
result

mul <- matrix1 %*% matrix2 # true matrix multiplication