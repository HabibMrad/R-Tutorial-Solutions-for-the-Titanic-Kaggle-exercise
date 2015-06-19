#Chapter1Exercise4
#Code of Rose vs Jack, or Female vs Male

# Your train and test set are still loaded in
str(train)
str(test)

# Passengers that survived vs passengers that passed away
table(train$Survived)
prop.table(table(train$Survived))
  
# Males & females that survived vs males & females that passed away
table(train$Sex, train$Survived)
prop.table(table(train$Sex, train$Survived),1)