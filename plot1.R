source("loaddata.R")
filtered <- loaddata()


dev.off() #reset par
png(filename = "plot1.png",
    width = 480,
    height = 480)

#plot data
hist(filtered$Global_active_power, 
     main = "Global Active Power",
     xlab = "Global Active Power(kilowatts)",
     col="red",
     xlim = c(0, 6),
     ylim = c(0, 1200))

dev.off()

