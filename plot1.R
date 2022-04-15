plot1 <- function(){
  
  power <- read.table("D:/Rprogramming/Exploratory data analysis/as1/household_power_consumption.txt", stringsAsFactors = FALSE, header = TRUE, sep =";")
  
  #changing the class of columns
  power$Date <- as.Date(power$Date, format = "%d/%m/%Y")
  power$Time <- format(power$Time, format = "%H:%M:%S")
  power$Global_active_power <- as.numeric(power$Global_active_power)
  power$Global_reactive_power <- as.numeric(power$Global_reactive_power)
  power$Voltage <- as.numeric(power$Voltage)
  power$Global_intensity <- as.numeric(power$Global_intensity)
  power$Sub_metering_1 <- as.numeric(power$Sub_metering_1)
  power$Sub_metering_2 <- as.numeric(power$Sub_metering_2)
  power$Sub_metering_3 <- as.numeric(power$Sub_metering_3)
  
  #now subsetting data
  
  subsetdata <- subset(power, Date == "2007-02-01" | Date == "2007-02-02")
  
  png("plot1.png", width = 480, height = 480)
  
  hist(subsetdata$Global_active_power, col = "red", border = "black", main = "Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
  dev.off()
}