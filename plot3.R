# Exploratory Data Analysis week 1 project
# Plot 3
# ---------------------
# Read in dataset from https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

pwr_data <- read.table("household_power_consumption.txt", sep = ";", header = T)
# subset the data to 2 dates, 1 and 2 February 2007
feb07.pwr <- pwr_data[(pwr_data$Date >= "2007-02-01" & pwr_data$Date <= "2007-02-02"), ]
feb07.pwr$date.time <- strptime(paste(feb07.pwr$Date,feb07.pwr$Time), "%Y-%m-%d %H:%M:%S")
feb07.pwr$Sub_metering_1 <- as.numeric(as.character(feb07.pwr$Sub_metering_1))
feb07.pwr$Sub_metering_2 <- as.numeric(as.character(feb07.pwr$Sub_metering_2))
feb07.pwr$Sub_metering_3 <- as.numeric(as.character(feb07.pwr$Sub_metering_3))

plot(feb07.pwr$date.time, feb07.pwr$Sub_metering_1, type = "n",
     xlab = "",
     ylab = "Energy sub metering")
lines(feb07.pwr$date.time, feb07.pwr$Sub_metering_1)
lines(feb07.pwr$date.time, feb07.pwr$Sub_metering_2, col = "red")
lines(feb07.pwr$date.time, feb07.pwr$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1, col = c("black", "red", "blue"))
dev.copy(png, "plot3.png")
dev.off()



