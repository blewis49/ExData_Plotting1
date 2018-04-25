# Exploratory Data Analysis week 1 project
# Plot 1
# ---------------------

# Read in dataset from https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

pwr_data <- read.table("household_power_consumption.txt", sep = ";", header = T)

pwr_data$Date <- strptime(as.character(pwr_data$Date), "%d/%m/%Y")
# subset the data to 2 dates, 1 and 2 February 2007
feb07.pwr <- pwr_data[(pwr_data$Date >= "2007-02-01" & pwr_data$Date <= "2007-02-02"), ]

hist(feb07.pwr$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", ylim = c(0, 1200), mar = c(1,2,5,1))

dev.copy(png, "plot1.png")
dev.off()




