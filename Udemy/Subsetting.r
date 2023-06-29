x <- c("A", "B", "C", "D", "E", "F")
x
x[c(1, 5)]
x[1]

#  Subsetting
Games
# 3 Rows(1-3), 5 columns(6-10)
Games[1:3, 6:10]
# if comma(,) isn't used then only values from 1st cols are printed
Games[c(1, 10), ]
Games[, c("2009", "2010")]

Games[1, ]
is.matrix(Games[1, ])
is.vector(Games[1, ])

Games[, 1]
# initially it's vector
is.matrix(Games[, 1])
# changing it to matrix
as.matrix(Games[, 1])
is.matrix(as.matrix(Games[, 1]))
is.vector(Games[, 1])

# or drop parameter which drops unnecessary dimensions. By Default True
Games[, 1, drop = F]
# initially it's vector
is.matrix(Games[, 1])
is.matrix(Games[, 1, drop = F])
#  NOW it's matrix,not a vector
is.vector(Games[, 1, drop = F])


# Visualising Subets
#  Matplot only plots a matrix.
Data <- MinutesPlayed[1, , drop = F]
matplot(
    t(Data),
    type = "b",
    pch = 15:50,
    col = c(1:4, 6)
)
legend(
    "bottomleft",
    inset = 0.01,
    legend = Players,
    col = c(1:4, 6),
    pch = 15:18,
    horiz = FALSE
)
