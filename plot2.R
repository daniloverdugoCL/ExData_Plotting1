

setwd("C:/Users/danilo.verdugo/Dropbox/personal/COURSERA DATA SCIENTIST/curso 4/semana 1/control1")

load(file="carga.Rdata")

png("grafo/plot2.png", width = 480, height = 480)
plot(carga$Time, carga$Global_active_power, type = "l", xlab = "", ylab = "global ative Power (kilowats)")
dev.off()

