plot1 <- function(df)
{
  png("plot1.png")
  hist(df$Global_active_power, col = "red",
       ylab = "Frequency",
       xlab = "Global Active Power (kilowatts)",
       main = "Global Active Power")
  dev.off()
}

source("loadDataFrame.R")
plot1(loadDataFrame("~/Downloads/household_power_consumption.txt"))