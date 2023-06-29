v <- c("Hello", "Loop")

# repeat loop
cnt <- 2
repeat {
    print(v)
    cnt <- cnt + 1
    if (cnt > 5) {
        break
    }
}
# while loop
cnt <- 2
while (cnt < 7) {
    print(v)
    cnt <- cnt + 1
}

# prints large case alphabets
x <- LETTERS[1:15]
for (i in x) {
    print(i)
}

# prints small case alphabets
a <- letters[1:15]
for (i in a) {
    print(i)
}

# for each loop
z <- 1:10
for (i in z) {
    print(i)
}
