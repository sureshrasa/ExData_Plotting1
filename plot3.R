plot3 <- function(df)
{
  png("plot3.png")
  plot(df$DateTime, df$Sub_metering_1, type="n",
       ylim = c(0, max(df$Sub_metering_1, df$Sub_metering_2, df$Sub_metering_3)),
       ylab = "Energy sub metering",
       xlab = "")
  lines(df$DateTime, df$Sub_metering_1, col = "black")
  lines(df$DateTime, df$Sub_metering_2, col = "red")
  lines(df$DateTime, df$Sub_metering_3, col = "blue")
  legend("topright",
         lwd = 1,
         col = c("black", "red", "blue"),
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  dev.off()
}


source("loadDataFrame.R")
plot3(loadDataFrame("~/Downloads/household_power_consumption.txt"))