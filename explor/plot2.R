data <- read.table("power.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data_subset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
date <- strptime(paste(data_subset$Date, data_subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
G_p <- as.numeric(data_subset$Global_active_power)
png("plot2.png")
plot(date, G_p, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
