#Plot3
library(ggplot2)
library(lattice)
library(jpeg)


dato <- read.csv("household_power_consumption.txt", sep = ";" , header = TRUE)
feb <- subset(dato, as.Date(dato$Date, "%d/%m/%Y") >= "2007-02-01" & as.Date(dato$Date, "%d/%m/%Y") <= "2007-02-02"  )

feb$DateTime <- strptime(paste(feb$Date, feb$Time), format="%d/%m/%Y %H:%M:%S")

with(feb, plot(DateTime, Sub_metering_1, type = "l", ylab = "Energy sub metering"))
lines(feb$DateTime, feb$Sub_metering_2, col = "red")
lines(feb$DateTime, feb$Sub_metering_3, col = "blue")

legend("topright", col=c("black", "red", "blue"),legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3" ), lty = 1)

dev.copy(png, file="Plot3.png")
dev.off()