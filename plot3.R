# get content
source("setup.R")

# create plot

with (data, {
    plot(dt, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
    lines(dt, Sub_metering_2, type="l", col="Red")
    lines(dt, Sub_metering_3, type="l", col="Blue")
})

