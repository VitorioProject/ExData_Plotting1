## Reads the data from Internet, filters it and converts it to the format needed
if ( !exists("selData")) source('loadData.R')
## Creates plot2.png
png(filename = "plot2.png", width=480, height=480)
par(mfrow=c(1,1), new=F)
plot(x = selData$DateTime, y = selData$Global_active_power, type = "l", ylab = "Global Active Power (Kilowatts)", xlab="")
dev.off()