source("loaddata.R")
source("plot2.R")
source("plot3.R")
#filtered <- loaddata()

dev.off() #reset par
png(filename = "plot4.png",
    width = 480,
    height = 480)

par(mfcol = c(2, 2),
    oma = c(3, 3, 1, 1),
    mar = c(4, 4, 1, 1))

#get plot#2
plot2()

#get plot#3

plot3()

#plot no. 3
plot(filtered$newDate,
     filtered$Voltage,
     type = "l",
     xlab = "datetime",
     ylab = "Voltage",
     bg = "red")

#plot no. 4
plot(filtered$newDate,
     filtered$Global_reactive_power,
    type="l",
     xlab="datetime",
     ylab="Global_reactive_power")

dev.off()
