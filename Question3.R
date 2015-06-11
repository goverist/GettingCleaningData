##script for question 3 Quizz 3 Getting and cleaning data courser
library(plyr)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", destfile = "GDPData.csv")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv", destfile= "Educationaldata.csv")
GDPData <- read.csv("GDPData.csv", stringsAsFactors = FALSE, skip=4, nrows=190)
Educationaldata <- read.csv("Educationaldata.csv", stringsAsFactors = FALSE)
combined <-merge(GDPData,Educationaldata, by.x="X", by.y="CountryCode", all.x=FALSE, all.y=FALSE)
combined <-arrange(combined,X.1)
