data <- read.table("power.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data_subset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
G_p <- as.numeric(data_subset$Global_active_power)

png("plot1.png")
hist(G_p, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()