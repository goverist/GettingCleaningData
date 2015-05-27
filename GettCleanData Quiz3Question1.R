## Script for Getting and cleaning data Quiz 3 Question 1
## sde
setwd("c:/Users/JMGO/Documents/Github/GettingCleaningData/Quizz3Question1")
DataQ3 <- read.csv("getdata.csv")
agriculturelogical <- DataQ3$ACR==3 & DataQ3$AGS==6
numbers <- DataQ3[which(agriculturelogical),]
numbers
