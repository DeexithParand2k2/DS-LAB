# SVM - supervised ML algo - AIM : Find a hyperplane that distinct data into different classes
# SVM - Maximizes the "margin" between the classes 
#	Margin is the distance betweent the hyperplane and the nearest data points

# now code ...

# Install the e1071 package (uncomment the line below if you haven't installed it yet)
install.packages("e1071")

# Load the e1071 library
library(e1071)

# Plot data.frame called iris and plot sepal and petal's data
plot(iris)
plot(iris$Sepal.Length, iris$Sepal.Width, col = iris$Species)
plot(iris$Petal.Length, iris$Petal.Width, col = iris$Species)

# Datapoints variable, 100 datapoints & "vector of properties in the dataset"
s <- sample(150, 100)
col <- c("Petal.Length", "Petal.Width", "Species")

# Create training and test data
iris_train <- iris[s, col]
iris_test <- iris[-s, col]

# Train SVM with linear kernel and specified cost function
svmfit <- svm(Species ~ ., data = iris_train, kernel = "linear", cost = 0.1, scale = FALSE)

# Print SVM model
print(svmfit)

# Plot SVM decision boundary with training data
plot(svmfit, iris_train[, col])

# Make predictions on the test data
p <- predict(svmfit, iris_test[, col], type = "class")

# Plot the predicted classes
plot(p)
