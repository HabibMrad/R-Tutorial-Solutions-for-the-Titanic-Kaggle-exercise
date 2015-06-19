#Chapter1Exercise6
#Making your first predictions

# Your train and test set are still loaded in
str(train)
str(test)

# prediction based on gender 
test_one <- test
test_one$Survived <- NA
test_one$Survived[test_one$Sex == 'female'] <- 1
test_one$Survived[test_one$Sex == 'male'] <- 0

table(test_one$Sex, test_one$Survived)
prop.table(table(test_one$Sex, test_one$Survived), 1)
