source("loaddata.R")
filtered <- loaddata()

plot3 <- function(){
    
    #plot data
    plot(filtered$newDate,
         filtered$Sub_metering_1,
         type="l",
         ylab = "Energy sub metering",
         xlab = "")
    lines(filtered$newDate,
          filtered$Sub_metering_2, 
          type="l", 
          col="red")
    lines(filtered$newDate,
          filtered$Sub_metering_3, 
          type="l", 
          col="blue")
    
    op <- par(cex = 0.5)
    legend("topright",
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           col = c("black", "red","blue"),
           pch = "-",
           lwd = 2,
           ncol = 1)
    
}

dev.off() #reset par
png(filename = "plot3.png",
    width = 480,
    height = 480)

plot3()
dev.off()



