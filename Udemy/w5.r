df <- read.csv(file = "datasets//HomeworkData.csv")
is.factor(df$Year)

data_2013 <- df[df$Year == 2013, ]
data_1960 <- df[!(df$Year == 2013), ]

library(ggplot2)

life_exp_1960 <- data.frame(
    Code = Country_Code,
    Life_Expectancy = Life_Expectancy_At_Birth_1960
)
life_exp_2013 <- data.frame(
    Code = Country_Code,
    Life_Expectancy = Life_Expectancy_At_Birth_2013
)

data_1960 <- merge(
    x = data_1960, y = life_exp_1960,
    by.x = "Country.Code", by.y = "Code"
)
data_2013 <- merge(
    x = data_2013, y = life_exp_2013,
    by.x = "Country.Code", by.y = "Code"
)

p1 <- qplot(
    data = data_2013, x = Fertility.Rate, y = Life_Expectancy,
    geom = "point", color = Region, size = I(3),
    shape = I(19), main = "IN 2013"
)
p2 <- qplot(
    data = data_1960, x = Fertility.Rate, y = Life_Expectancy,
    geom = "point", color = Region, size = I(3),
    shape = I(19), main = "IN 1960"
)

library(gridExtra)
grid.arrange(p1, p2, ncol = 2)

install.packages("gridExtra")