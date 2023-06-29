# ===== vector subsetting example ====
x <- c("a", "a", "c", "c", "e", "f")
x[1]
x[2]
x[1:4]
#  subsetting based on the condition
x[x > "a"]

# vectors of Logical
u <- x > "a"
u
x[u]


# ===== LIST subsetting example ====
x <- list(10:4, bar = 0.6)
x
x[1]
x[2]
x[[1]][3]
x[[2]]
x$bar <- 0.7
x[["bar"]]
x["bar"]


n <- list(a = list(10, 12, 14), b = c(3.14, 2.81))
n[[c(2, 2)]]
n[[2]][2]

# ===== MATRIX subsetting example ====
y <- matrix(1:6, 2, 3)
y
y[1, 2]
