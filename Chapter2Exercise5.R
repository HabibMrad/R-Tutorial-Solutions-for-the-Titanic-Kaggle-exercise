#Chapter2Exercise5
# Overfitting, the iceberg of decision trees
# Your train and test set are still loaded in
str(train)
str(test)

# Create a new decision tree my_tree_three

my_tree_three <- rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked, data = train, method = "class", control= rpart.control(minsplit = 50, cp = 0))

  
# Visualize your new decision tree
fancyRpartPlot(my_tree_three)