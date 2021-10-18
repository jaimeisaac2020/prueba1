SurvTime = c(60,100,130,100,115,30,60,145,75,80,89,57,64,92,87,110,
             180,195,175,179,159,155, 146,157,167,174,87,67,73,109,123,135,129,
             141,154,166,179,37,49,68,74,89,87,109,119,125,56,39,49,190)
#To plot the histogram
hist(SurvTime, breaks=seq(30,198, by=24), main="Histogram of Survival Time",
     xlab="Survival Time", ylab="Frequency", col="grey", right = FALSE)
#To obtain the cumulative histogram, we replace cell
#frequencies by their cumulative frequencies
h = hist(SurvTime, breaks=seq(30,198, by=24), right = FALSE)
h$counts = cumsum(h$counts)
h$density
h$mids
#To plot the cumulative histogram
plot(h, main="Cumulative Histogram", xlab="Survival Time",
     ylab="Cumulative Frequency", col="grey")
