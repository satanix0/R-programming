# Everything, even a single character or a single numeric
# in R is a vector, called atomic vector

# Atomic Vector for numeric
a <- 23
print(a)

# Atomic Vector for Integer
b <- 12L
print(b)

# Atomic Vector for logical
c <- TRUE
print(c)

# Atomic Vector for character
char <- "Hello"
print(char)

# Atomic Vector for complex
e <- 2 + 4i
print(e)

# length.out  is used to specify no. of elements we want.
g <- seq(4, 7, length.out = 6)
print(g)

h <- seq(30, 15)
print(h)

# ':' is similar to seq(),
# but seq() gives more flexibility and control over the o/p
x <- 3.8:8.9
print(x)


# c is a function - combine
a <- c("Hil", "w", 1, "o")
print(a)

a <- c(10, 20, 30, 40, 50)
print(a[2]) # indexing
print(a[c(1:4)])
print(a[c(1, 4)])


# prints the value where for index, where true
print(a[c(TRUE, FALSE, FALSE, TRUE, TRUE)])

# Excludes the value for negative index
print(a[c(-1, -3)])

print(a[c(2, 4, 5)])

a <- NULL # Deletes the vector
a

# ========= Vector Indexing ===========
x <- 1:7
x
x <- seq(0, 10, by = 2)
x
x[c(2, -4)]
x[c(2.9, 3.54)]
x

w <- 3.8:11.4
print(w) # increase value by 1.0

# =====================
a <- 1:5
a
a[2] <- 20 # Updating Value
a
a[a < 3] <- 100 # assigns 100 to those elements that are <3
a
a <- a[1:4]
a
a <- NULL # Deletes the vector
a
a[2]


c <- 1:6
length(c)
c[6] <- NULL
c
c[1] <- NULL
c <- NULL
c

# ======== Replicate rep(value, no. of replication) Function =========
r <- rep(3, 10) # 3 gets repeated 10 times
print(r)
chr <- rep("a", 21)
print(chr)

# Replicating a vector
v1 <- c(15, 30, 45)
print(v1 * 2)
rep(v1, 10)

x <- c("a", "b", "c")
z <- rep(x, times = 5)
print(z)
z <- rep(x, each = 5)
print(z)

# Summary 4 ways to create a vector

v1 <- c(15, 30, 45)
v2 <- 15:20
v3 <- seq(15, 30, by = 15)
v4 <- rep(15, 4)

print(v1[-1])

# Named Vectors
Charlie <- 1:5
Charlie

names(Charlie) <- c("A", "B", "C", "D", "E")
print(Charlie["C"])
print(Charlie[3])
