# x <- c(1, 2, 3)
# y <- c(4, 5, 6)

# cbind(x, y)
# rbind(x, y)


x <- 1:4
y <- 2:3
class(x + y)

df <- read.csv("hw1_data.csv")


# Q11.
colnames(df)
# Q12.
head(df, 2)
# Q13
ncol(df)
nrow(df)
# Q14.
tail(df, 2)
# Q15.
df[47, ]
# Q16.
sum(is.na(df$Ozone))
# Q17.
oz <- df$Ozone[!is.na(df$Ozone)]
mean(oz)
# Q18.
sub_oz <- subset(df, (Ozone > 31 & Temp > 90))
mean(sub_oz$Solar.R)
# Q19.
tmp <- subset(df, Month == 6)
mean(tmp$Temp)
# Q20.
tmp <- subset(df, Month == 5)
max(tmp$Ozone[!is.na(tmp$Ozone)])
