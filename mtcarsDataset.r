
mtcars <- "mtcars.csv"
data(mtcars)
head(mtcars)

summary(mtcars)

str(mtcars)

boxplot(mpg ~ cyl, data=mtcars, main="Car Mileage Data", xlab="Number of Cylinders", ylab="mpg", col=c("purple", "blue", "yellow"))

library(lattice)
densityplot(~mpg, data=mtcars, groups=cyl, plot.points=F, auto.key=list(columns=3, title="Cylinders"))

plot(mpg ~ disp, data=mtcars)
abline(lm(mpg~disp, data=mtcars), col="blue")

# Correlation between mpg and disp. Shows strong negative correlation between mpg and disp.
cor(mtcars$mpg, mtcars$disp)

# R Scatterplot matrix. A scatterplot matrix is a scatterplot on all the numeric variables of a dataset.
pairs(~Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data=iris, main="Simple Scatter Matrix")

# Lattice scatterplot matrix is a better scatterplot.
splom(iris[1:4], groups=iris$Species, auto.key=TRUE)

# Modifying global settings for generating plots and reports.
my.theme = trellis.par.get()
names(my.theme)

show.settings()
my.theme$fontsize$text=20

install.packages("GGally")
library(GGally)
ggpairs(iris, ggplot2::aes(color=Species))


