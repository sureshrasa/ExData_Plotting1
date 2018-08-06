plotActivePower <- function(df)
{
  plot(df$DateTime, df$Global_active_power, type="n",
       ylab = "Global Active Power",
       xlab = "")
  lines(df$DateTime, df$Global_active_power)
}

plotVoltage <- function(df)
{
  plot(df$DateTime, df$Voltage, type="n",
       ylab = "Voltage",
       xlab = "datetime")
  lines(df$DateTime, df$Voltage)
}

plotSubmetering <- function(df)
{
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
         bty = "n",
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
}
plotReactivePower <- function(df)
{
  plot(df$DateTime, df$Global_reactive_power, type="n",
       ylab = "Global_reactive_power",
       xlab = "datetime")
  lines(df$DateTime, df$Global_reactive_power)
}

plot4 <- function(df)
{
  png("plot4.png")
  par(mfrow = c(2,2))
  plotActivePower(df)
  plotVoltage(df)
  plotSubmetering(df)
  plotReactivePower(df)
  dev.off()
}


source("loadDataFrame.R")
plot4(loadDataFrame("~/Downloads/household_power_consumption.txt"))