loadDataFrame <- function(filename)
{
  df = read.table(file=filename, sep=";", header = TRUE, stringsAsFactors = FALSE)
  df$DateTime = strptime(paste(df$Date, df$Time, sep = ' '), format = "%d/%m/%Y %H:%M:%S")
  df = subset(df, df$DateTime >= "2007-02-01" & df$DateTime < "2007-02-03")
  df$Global_active_power = as.numeric(df$Global_active_power)
  df$Global_reactive_power = as.numeric(df$Global_reactive_power)
  df$Voltage = as.numeric(df$Voltage)
  df$Sub_metering_1 = as.numeric(df$Sub_metering_1)
  df$Sub_metering_2 = as.numeric(df$Sub_metering_2)
  df$Sub_metering_3 = as.numeric(df$Sub_metering_3)
  return (df)
}