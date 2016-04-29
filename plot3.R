

setwd("C:/Users/danilo.verdugo/Dropbox/personal/COURSERA DATA SCIENTIST/curso 4/semana 1/control1")

load(file="carga.Rdata")

png("grafo/plot3.png", width = 480, height = 480)
plot(carga$Time, carga$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy metering")
lines(carga$Time, carga$Sub_metering_2, type="l", col="red")
lines(carga$Time, carga$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
dev.off()

