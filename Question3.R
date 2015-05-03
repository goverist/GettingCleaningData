##script for question 3 Quizz 3 Getting and cleaning data courser
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", destfile = "GDPData.csv")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv", destfile= "Educationaldata.csv")
GDPData <- read.csv("GDPData.csv", stringsAsFactors = FALSE)
Educationaldata <- read.csv("Educationaldata.csv", stringsAsFactors = FALSE)
combined <-merge(GDPData,Educationaldata, by.x="X", by.y="CountryCode")
