## Quiz 3 Question 2 script
## https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg", destfile = "picture.jpg", mode ="wb")
PictureData <- readJPEG("picture.jpg", native ="TRUE")
PictureQuantile <- quantile(PictureData, probs=c(0.3, 0.8))
print(PictureQuantile)