
setwd("C:/Users/danilo.verdugo/Dropbox/personal/COURSERA DATA SCIENTIST/curso 4/semana 1/control1")

load(file="carga.Rdata")

png("grafo/plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))	
plot(carga$Time, carga$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
plot(carga$Time, carga$Voltage, type = "l", xlab = "dateTime", ylab = "Global active power")
plot(carga$Time, carga$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(carga$Time, carga$Sub_metering_2, type="l", col="red")
lines(carga$Time, carga$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
plot(carga$Time, carga$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Active Power")
dev.off()
