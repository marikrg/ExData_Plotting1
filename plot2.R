source('data_provider.R')

plotGlobalActivePowerGraph <- function(data) {
  yLabel <- "Global Active Power (kilowatts)"
  plot(data$Date, data$Global_active_power, type="l", ylab=yLabel, xlab="")  
}

data <- loadData()
png(filename = "plot2.png")
plotGlobalActivePowerGraph(data)
dev.off()