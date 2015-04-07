source('data_provider.R')

plotEnergySubMeteringGraph <- function(data) {
  plot(data$Date,  data$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
  lines(data$Date, data$Sub_metering_2, type="l", col="red")
  lines(data$Date, data$Sub_metering_3, type="l", col="blue")
  legend("topright", legend=names(data[7:9]), lty=1, col=c("black","red","blue"))
}
data <- loadData()
png(filename = "../img/plot3.png")
plotEnergySubMeteringGraph(data)
dev.off()