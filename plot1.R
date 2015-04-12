# get content
source("setup.R")

# draw histogram
hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")

# write output file
dev.copy(png, "plot1.png", height=480, width=480)
dev.off()
