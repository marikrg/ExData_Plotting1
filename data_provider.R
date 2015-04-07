loadData <- function() {
  
  readData <- function() {
    read.csv('household_power_consumption.txt', header=TRUE, na.strings="?", sep=";")
  }  
  filterDataByDate <- function(regex) {
    data[grep(regex,data$Date),]
  }
  convertDateAndTime <- function() {
    data$Date <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")
    data
  }
  data <- readData()
  data <- filterDataByDate("^(1|2)/2/2007$")
  data <- convertDateAndTime()
  data
}