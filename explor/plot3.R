data <- read.table("power.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data_subset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
date <- strptime(paste(data_subset$Date, data_subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

Meter1 <- as.numeric(data_subset$Sub_metering_1)
Meter2 <- as.numeric(data_subset$Sub_metering_2)
Meter3 <- as.numeric(data_subset$Sub_metering_3)

png("plot3.png")
plot(date, Meter1, type="l", ylab="Energy Submetering", xlab="")
lines(date, Meter2, type="l", col="red")
lines(date, Meter3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2, col=c("black", "red", "blue"))
dev.off()