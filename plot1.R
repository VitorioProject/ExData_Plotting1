## Reads the data from Internet, filters it and converts it to the format needed
if ( !exists("selData")) source('loadData.R')
## Creates plot1.png
png(filename = "plot1.png", width=480, height=480)
par(mfrow=c(1,1), new=F)
hist(selData$Global_active_power, xlab = "Global Active Power (Kilowatts)", main = "Global Active Power", col = "red")
dev.off()