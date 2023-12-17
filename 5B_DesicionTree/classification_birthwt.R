# decision tree classification based on birthwt dataset
# to remember :: within, ("low","race","smoke","ht","ui")
# rpart uses method="class"
# .. predict uses type="class" also used in svm
install.packages("rpart")
install.packages("MASS")

birthwt <- within(MASS::birthwt,{col <- c("low","race","smoke","ht","ui"); col <- lapply(.SD, as.factor)})

# dataset constraints
set.seed(1)
train <- supply( 1:nrow(birthwt), 0.75 * nrow(birthwt))

# rpart tree creation using birthwt[train:]
birthwtTree <- rpart(low ~ . - bwt ,data=birthwt[train,] , method="class")

# display
plot(birthwtTree)
text(birthwtTree)
summary(birthwtTree)

# predict using dataset
birthwtPred <- predict(birthwtTree,birthwt[-train,] ,type="class")

# display comparison
table(birthwtPred, birthwt[-train,]$low)

# note : $ is used to get the list in a dataframe column