#Assign given data to the variable RodData
RodData = c(145,140,120,110,135,150,130,132,137,115,142,115,130,
            124,139,133,118,127,144,143,131,120,117,129,148,130,121,136,133,
            147,147,128,142,147,152,122,120,145,126,151)
#To define the intervals
breaks = seq(110, 152, by=7)
breaks
#To assign each observation to its interval
RodData.split = cut(RodData, breaks, right=FALSE)
#To obtain the frequency of data in each class
RodData.split
RodData.freq = table(RodData.split)
#To combine necessary columns
freq.dist = cbind(RodData.freq,100*RodData.freq/sum(RodData.freq),
                  cumsum(RodData.freq), 100*cumsum(RodData.freq)/sum(RodData.freq))
#To name the table columns
colnames(freq.dist) = c("Frequency","Percentage", "Cum.Frequency","Cum.Percentage")
freq.dist
