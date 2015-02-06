###############################
# Plot1
###############################

filename   <- "./household_power_consumption.txt"
inputdata  <- read.table(filename, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
inputdata1 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(inputdata)
#str(inputdata1)

globalActivePower <- as.numeric(inputdata1$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="green", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

# dir()
