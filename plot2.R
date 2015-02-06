###############################
##  Plot2
###############################
#  repeat


filename   <- "./household_power_consumption.txt"
inputdata  <- read.table(filename, header=TRUE, sep=";",  na.strings="?", stringsAsFactors=FALSE, dec=".")
inputdata1 <- tbl[data$Date== "1/2/2007") | (tbl$Date == "2/2/2007"),]

#str(inputdata)
#str(inputdata1)

datetime <- strptime(paste(inputdata1$Date, inputdata1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(inputdata1$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kW)")
dev.off()