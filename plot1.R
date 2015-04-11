# download and unzip if needed
if (!file.exists("./household_power_consumption.txt")) {
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "hpc.zip")
    unzip("hpc.zip") 
    file.remove("hpc.zip")
}

# read data (this is slow due to large dataset)
message("Reading content...")
data <- read.table("./household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors=FALSE)

# quick and dirty way to get the rows needed, without expensive time conversions
data <- data[ data$Date=="1/2/2007" | data$Date=="2/2/2007" , ]
data$Global_active_power <- as.numeric(data$Global_active_power)

hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")

# write output file
dev.copy(png, "plot1.png")
dev.off()
