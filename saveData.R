#Download data of URL
#Filter to date 
#save to disk
#author:  Danilo Verdugo
##############################################
setwd("C:/Users/danilo.verdugo/Dropbox/personal/COURSERA DATA SCIENTIST/curso 4/semana 1/control1")
library(httr) 

murl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
dir.create("data")
dir.create("grafo")
download.file(murl,"household_power_consumption.zip", mode="wb")
unzip("household_power_consumption.zip", list = FALSE, overwrite = FALSE, exdir = "data")

mdata <- "data/household_power_consumption.txt"

#sample header file txt
#Date;Time;Global_active_power;Global_reactive_power;Voltage;Global_intensity;Sub_metering_1;Sub_metering_2;Sub_metering_3
# note: I use rep() para crear las 7 columnas
carga <- read.table(mdata, header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")

#I use recomentation of README.md
carga$Time <- strptime(paste(carga$Date, carga$Time), "%d/%m/%Y %H:%M:%S")
carga$Date <- as.Date(carga$Date, "%d/%m/%Y")

#filter list
selecc <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
#cleaning data
carga <- subset(carga, Date %in% selecc)
#SAVE to disk, I want to use in lesson 
save(carga,file = "carga.Rdata")



