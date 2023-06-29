x <- readLines("U3/nice.txt")
x

# making a connection
con <- file("U3/doing.txt")
writeLines(text = c("DeDe", "Yolo"), con = con)

con2 <- url("http://www.example.com")
z <- readLines(con2)
head(z)
