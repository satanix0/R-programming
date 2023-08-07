df <- read.csv("datasets\\HomeworkData.csv")

str(df)
head(df, n = 6)
tail(df, n = 6)
summary(df)
print(df[, 1])
print(df$Year)
