#Plot1
library(ggplot2)
library(lattice)
library(jpeg)

dato <- read.csv("household_power_consumption.txt", sep = ";" , header = TRUE)
feb <- subset(dato, as.Date(dato$Date, "%d/%m/%Y") >= "2007-02-01" & as.Date(dato$Date, "%d/%m/%Y") <= "2007-02-02"  )

par(mfrow = c(1,1))
hist(as.numeric(feb$Global_active_power), main="Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")

dev.copy(png, file="plot1.png", width =480 , height = 480)
dev.off()


# 1.	Date: Date in format dd/mm/yyyy
# 2.	Time: time in format hh:mm:ss
# 3.	Global_active_power: household global minute-averaged active power (in kilowatt)
# 4.	Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
# 5.	Voltage: minute-averaged voltage (in volt)
# 6.	Global_intensity: household global minute-averaged current intensity (in ampere)
# 7.	Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
# 8.	Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
# 9.	Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

#Our overall goal here is simply to examine how household energy usage 
# varies over a
#2-day period in February, 2007
