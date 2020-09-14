#Plot2
library(ggplot2)
library(lattice)
library(jpeg)
library(lubridate)

dato <- read.csv("household_power_consumption.txt", sep = ";" , header = TRUE)
feb <- subset(dato, as.Date(dato$Date, "%d/%m/%Y") >= "2007-02-01" & as.Date(dato$Date, "%d/%m/%Y") <= "2007-02-02"  )

feb$DateTime <- strptime(paste(feb$Date, feb$Time), format="%d/%m/%Y %H:%M:%S")

par(mfrow = c(1,1))
plot(feb$DateTime, feb$Global_active_power, type="l" , 
     ylab="Global Active Power (kilowatts)", xlab="Datetime")

dev.copy(png, file="plot2.png", width =480 , height = 480)
dev.off()

#title(main="Power  vs Datetime")
#wday(as.Date(feb$Date, "%d/%m/%Y"),label =TRUE )
#as.POSIXct(paste(feb$Date, feb$Time), format="%d/%m/%Y %H:%M:%S" , tz = "")