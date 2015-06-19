#Chapter1Exercise5
#Does age play a role?

# Your train and test set are still loaded in
str(train)
str(test)

# Create the column child, and indicate whether child or no child
train$Child <- NA
train$Child[train$Age < 18] <- 1
train$Child[train$Age >= 18] <- 0

# Two-way comparison
table(train$Child, train$Survived)
prop.table(table(train$Child, train$Survived), 1)