# bar chart
library(tidyverse)
view(mpg)
# mpg is a fuel economy dataset
# ggplot is a package to create company plots
# geome_bar makes the height of the bar proportion
# number of cases in each group
# aes is something that is visual
ggplot(data = mpg,(aes(x = class))) +
  geom_bar() 
# scatter plot diagram
library(ggplot2)
# geom_point() will add points to the plot to create
view(mtcars)

ggplot(data = mtcars, aes(x = drat, y = mpg)) +
  geom_point() + 
  xlab("DRAT") + 


# Pie Chart
df <- data.frame(
  value = c(10, 23, 15, 18),
  group = paste0("G", 1:4)
)
df

# fill parameter is used to fill color in Pie Chart
# geom_col is used for outline the slices of the pie chart
# theta is used to choose on which parameter angle should be used

ggplot(df, aes(x = "", y = value, fill = group)) +
  geom_col(color = "black") +  # geom_col function is used to create the outline of the pie chart slices
  coord_polar(theta = "y") 

library(dplyr)

# Doughnut Chart
hsize <- 4 # hole size
df
df <- df %>%
  mutate(x = hsize) # belongs to dplyr
df

ggplot(df, aes(x = hsize, y = value, fill = group)) +
  geom_col() +
  coord_polar(theta = "y") +
  xlim(c(0.7, hsize + 0.5))



shsize <- 1 # hole size
df
df <- df %>%
  mutate(x = shsize)
df

ggplot(df, aes(x = shsize, y = value, fill = group)) +
  geom_col() +
  coord_polar(theta = "y") +
  xlim(c(0.7, shsize + 0.5))



# HeatMap
library(ggplot2)
library(reshape2)

df <- read.csv("bestsellers1.csv")

# cor() will calculate correlation

data <- cor(df[sapply(df, is.numeric)])
data

# melt is used to convert long data into wider format
data1 <- melt(data)
data1

# geom_tile() is used to create rectangular tiles
ggplot(data1, aes(
  x = var1,
  y = var2,
  fill = value
)) +
  geom_tile()

