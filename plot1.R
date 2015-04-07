source('data_provider.R')

plotGlobalActivePowerHistogram <- function(data) {
  title <- "Global Active Power"
  xLabel <- "Global Active Power (killowats)"
  hist(data$Global_active_power, col="red", main=title, xlab=xLabel)
}

data <- loadData()
png(filename = "plot1.png")
plotGlobalActivePowerHistogram(data)
dev.off()