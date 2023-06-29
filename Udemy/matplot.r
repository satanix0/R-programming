# t() --> Transpose Function
TransposedGoals <- t(FieldGoals / Games)
TransposedGoals


matplot(
    TransposedGoals,
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


matplot(
    t(FieldGoals / FieldGoalsAttempts),
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
