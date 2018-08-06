plot1 <- function(df)
{
  # df Should be loaded using loadDateFrame method.
  
  png("plot1.png")
  hist(df$Global_active_power, col = "red",
       ylab = "Frequency",
       xlab = "Global Active Power (kilowatts)",
       main = "Global Active Power")
  dev.off()
}