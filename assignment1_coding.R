#Download and Read Data
df <- read.csv(url("https://data.giss.nasa.gov/gistemp/tabledata_v3/GLB.Ts+dSST.csv"),
               skip=1,
               na.strings = "***")

#Prepare Environment for Visualisation
library(reshape2)
library(ggplot2)
temp <- melt(df[, names(df) %in% c("Year","Jan", "Apr", "Aug")], 
             id.vars = "Year")

#Create Data Visualisation and save as png
png(filename = "assignment1_submission.png", width = 450, height = 450)
ggplot(data=temp,
       aes(x=Year, y=value)) +
xlab("Year of Observation") + 
ylab("Log change in temparatur to last year") + 
geom_line(aes(colour=variable)) +
theme(legend.title=element_blank()) +
ggtitle("Illustration of Log Changes in Temparatur")
dev.off()

