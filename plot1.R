

setwd("C:/Users/danilo.verdugo/Dropbox/personal/COURSERA DATA SCIENTIST/curso 4/semana 1/control1")

load(file="carga.Rdata")

png("grafo/plot1.png", width = 480, height = 480)
hist(carga$Global_active_power, main = "Global  Active power", xlab = "global active Power (kilowatts)", ylab = "Frequency", col = "red")
dev.off()

