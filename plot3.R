## Reads the data from Internet, filters it and converts it to the format needed
if ( !exists("selData")) source('loadData.R')
## Creates plot3.png
png(filename = "plot3.png", width=480, height=480)
par(mfrow=c(1,1), new=F)
pcolors<- c("black", "red", "blue")
plot(x = selData$DateTime, y = selData$Sub_metering_1, type = "l", col=pcolors[1], ylim=c(0,38), xlab="", ylab = "")
par(new=T)
plot(x = selData$DateTime, y = selData$Sub_metering_2, type = "l", col=pcolors[2], ylim=c(0,38), xlab="", ylab = "")
par(new=T)
plot(x = selData$DateTime, y = selData$Sub_metering_3, type = "l", col=pcolors[3], ylim=c(0,38), xlab="", ylab = "Energy sub metering")
legend("topright",legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=pcolors, lwd=1, xjust = 1)
par(new=F)
dev.off()