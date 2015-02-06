###############################
##  Plot4
###############################
filename   <- "./household_power_consumption.txt"
inputdata  <- read.table(filename, header=TRUE, sep=";",  na.strings="?", stringsAsFactors=FALSE, dec=".")
inputdata1 <- tbl[data$Date== "1/2/2007") | (tbl$Date == "2/2/2007"),]

#str(inputdata)
#str(inputdata1)

datetime <- strptime(paste(inputdata1$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(inputdata1$Global_active_power)
globalReactivePower <- as.numeric(inputdata1$Global_reactive_power)
voltage <- as.numeric(inputdata1$Voltage)
subMetering1 <- as.numeric(inputdata1$Sub_metering_1)
subMetering2 <- as.numeric(inputdata1$Sub_metering_2)
subMetering3 <- as.numeric(inputdata1$Sub_metering_3)


png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")

plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(datetime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()

######################################


