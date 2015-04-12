# get content
source("setup.R")

# create plot
plot(data$dt, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

# write output file (NOTE! weekdays are locale specific. For generated images they are: to=thu, pe=fri, la=sat)
dev.copy(png, "plot2.png", height=480, width=480)
dev.off()
