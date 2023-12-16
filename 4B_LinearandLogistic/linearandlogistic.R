# liner regression, multiple regression, logistic regression
# lm, lm, glm (mtcars[,c("am","cyl","hp","wt")])

# linear regression
dataset = read.csv("dataset.csv", header=T, colClasses=c("numeric", "numeric", "numeric"))
head(dataset,5)
simple.fit = lm(Sales~Spend, data=dataset)
summary(simple.fit)

# multilinear regression
multi.fit = lm(Sales~Spend+Month, data=dataset)
summary(multi.fit)

# logistic regression
dataset2 <- mtcars[,c("am","cyl","hp","wt")]
print(head(input))
am.fit = glm(formula = am~cyl+hp+wt, data=dataset2, family=binomial)
print(summary(am.fit)) 