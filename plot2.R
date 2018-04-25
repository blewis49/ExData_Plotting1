install.packages("lubridate")
library(lubridate)
library(hms)
# data read into environment in plot1.R
feb07.pwr$date.time <- strptime(paste(feb07.pwr$Date,feb07.pwr$Time), "%Y-%m-%d %H:%M:%S")

plot(feb07.pwr$date.time, feb07.pwr$Global_active_power, type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

dev.copy(png, "plot2.png")
dev.off()
