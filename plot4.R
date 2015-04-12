# get content
source("setup.R")

# create 2x2 plots
par(mfcol = c(2,2))

# add plot1
plot(data$dt, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

# add plot2
with (data, {
    plot(dt, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
    lines(dt, Sub_metering_2, type="l", col="Red")
    lines(dt, Sub_metering_3, type="l", col="Blue")
})
legend("topright", col=c("black", "red", "blue"), lty=1, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# add plot3
plot(data$dt, data$Voltage, type="l", xlab="datetime", ylab="Voltage")

# add plot4
plot(data$dt, data$Global_reactive_power, type="l", xlab="datetime", ylab="Voltage")

# write output file (NOTE! weekdays are locale specific. For generated images they are: to=thu, pe=fri, la=sat)
dev.copy(png, "plot4.png", height=480, width=480)
dev.off()
