x <- 4
if (x > 1) {
    ans <- "Greater than 1"
} else if (x == 2) {
    ans <- "Equal to 2"
} else {
    ans <- "Lesser than 1"
}


x <- c("What", "is", "Truth")
if ("Truth" %in% x) {
    print("Includes")
} else {
    print("doesnt Includes")
}

# assign value directly

y <- if (x > 3) {
    1
} else {
    0
}
