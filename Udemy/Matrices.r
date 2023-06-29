mydata <- seq(1:20)
mydata

cname <- c("COL1", "COL2", "COL1", "COL2")
rname <- c("R1", "R2", "R1", "R2", "R3")

mtrx <- matrix(data = mydata, nrow = 5, ncol = 4, dimnames = list(rname, cname))
mtrx
#  prints only the 2nd Column
print(mtrx[, 2])


# Usage of rbind()
r1 <- c("I", "am", "happy")
r2 <- c("What", "a", "day")
r3 <- c(1, 2, 3)

c <- rbind(r1, r2, r3)
print(c)


# Usage of cbind()
x1 <- 1:5
x2 <- -1:-5

d <- cbind(x1, x2)
print(d)


# create a new matrix
temp.vec <- rep(c("a", "b", "zz"), each = 3)
temp.vec

v1 <- c("R1", "R2", "R3")
bravo <- matrix(
    data = temp.vec, nrow = 3, ncol = 3,
    byrow = TRUE
)
bravo

# Naming Rows of the matrix
rownames(bravo) <- c("R1", "R2", "R3")
colnames(bravo) <- c("COL1", "COL2", "COL3")

# Accesing elems
bravo
bravo["R2", ]
bravo[, "COL2"]
bravo["R2", "COL3"]
bravo["R2", 3]
bravo[2, 3]

# Matrix operations
rownames(Games)
colnames(Games)
Games["LeBronJames", "2009"]

FieldGoals
round(FieldGoals / Games, digits = 1)

round(MinutesPlayed / Games)

# we seen division, similarly other operations can be performed here.

#  Matrices supports all mathematical operations.
m <- matrix(
    data = c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    nrow = 3,
    byrow = F,
)
m
n <- matrix(
    data = c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    nrow = 3,
    byrow = T,
)
n

m * n