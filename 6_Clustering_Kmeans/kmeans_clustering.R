install.packages("datasets")
install.packages("ggplot2")

library(datasets)
library(ggplot2)

# head the iris data frame
head(iris)

# now create a scatter plot for iris
ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + geom_point()

# setting seed for random number
set.seed(20)

# iris cluster  # kmeans(column range, number of cluster, how many times to run)
iris.cluster <- kmeans(iris[, 3:4], 3, nstart=20)

print(iris.cluster)

table(iris.cluster$cluster, iris$Species)