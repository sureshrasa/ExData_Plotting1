plot2 <- function(df)
{
  # df Should be loaded using loadDateFrame method.
  
  png("plot2.png")
  plot(df$DateTime, df$Global_active_power, type="n",
       ylab = "Global Active Power (kilowatts)",
       xlab = "")
  lines(df$DateTime, df$Global_active_power)
  dev.off()
}