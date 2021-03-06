# get content
source("setup.R")

# create plot
with (data, {
    plot(dt, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
    lines(dt, Sub_metering_2, type="l", col="Red")
    lines(dt, Sub_metering_3, type="l", col="Blue")
})

# add legend
legend("topright", col=c("black", "red", "blue"), lty=1, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# write output file (NOTE! weekdays are locale specific. For generated images they are: to=thu, pe=fri, la=sat)
dev.copy(png, "plot3.png", height=480, width=480)
dev.off()
