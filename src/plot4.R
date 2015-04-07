source('data_provider.R')

plotGlobalActivePowerGraph <- function(data) {
  plot(data$Date,data$Global_active_power, type="l",ylab="Global Active Power",xlab="")
}
plotEnergySubMeteringGraph <- function(data) {
  plot(data$Date,data$Sub_metering_1, type="l",ylab="Energy sub metering",xlab="")
  lines(data$Date,data$Sub_metering_2, type="l", col="red")
  lines(data$Date,data$Sub_metering_3, type="l", col="blue")
  colors <- c("black","red","blue")
  legend("topright", box.lwd=0, legend=names(data[7:9]), lty=1, col=colors, cex=0.7)
}
plotVoltageGraph <- function(data) {
  plot(data$Date,data$Voltage, type="l",ylab="Voltage",xlab="datetime") 
}
plotGlobalReactivePowerGraph <- function(data) {
  yLabel <- "Global_reactive_power"
  plot(data$Date,data$Global_reactive_power, type="l",ylab=yLabel,xlab="datetime")
}
plotGraphs <- function(data) {
  par(mfcol=c(2,2))
  plotGlobalActivePowerGraph(data)
  plotEnergySubMeteringGraph(data)
  plotVoltageGraph(data)
  plotGlobalReactivePowerGraph(data)
}
data <- loadData()
png(filename = "../img/plot4.png")
plotGraphs(data)
dev.off()