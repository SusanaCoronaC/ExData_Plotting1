#Plot4
library(ggplot2)
library(lattice)
library(jpeg)


dato <- read.csv("household_power_consumption.txt", sep = ";" , header = TRUE)
feb <- subset(dato, as.Date(dato$Date, "%d/%m/%Y") >= "2007-02-01" & as.Date(dato$Date, "%d/%m/%Y") <= "2007-02-02"  )

feb$DateTime <- strptime(paste(feb$Date, feb$Time), format="%d/%m/%Y %H:%M:%S")

par(mfrow = c(2,2), cex = 0.8, mar=c(4,4,1.5,1) )

#plot 1
plot(feb$DateTime, feb$Global_active_power, type="l" , 
     ylab="Global Active Power (kilowatts)", xlab="Datetime")

#plot 2
plot(feb$DateTime, feb$Voltage, type="l" , 
     ylab="Voltage", xlab="Datetime")

#plot 3
with(feb, plot(DateTime, Sub_metering_1, type = "l", ylab = "Energy sub metering"))
lines(feb$DateTime, feb$Sub_metering_2, col = "red")
lines(feb$DateTime, feb$Sub_metering_3, col = "blue")

legend("topright", col=c("black", "red", "blue"),legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3" ), lty = 1)


#plot 4
plot(feb$DateTime, feb$Global_reactive_power, type="l" , 
     ylab="Global reactive power", xlab="Datetime")

dev.copy(png, file="Plot4.png")
dev.off()