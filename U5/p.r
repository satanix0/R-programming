library(ggplot2)
ggplot(data = iris,aes(x=Species,y=Petal.Width)) + 
  geom_bar(stat = "mean")
  

?geom_bar()
ggplot(data = iris,aes(y=Species,x=Sepal.Width)) +
  geom_line()

library(ggplot2)
ggplot(iris, aes(x = Species, y = Petal.Length)) +
  geom_bar(stat = "sum")