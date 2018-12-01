source("loaddata.R")
filtered <- loaddata()

#plot data
plot2 <- function(){
   test <- plot(filtered$newDate,
         ((filtered$Global_active_power)),
         type = "l",
         ylab = "Global Active Powerr (kilowatts)",
         xlab = "")
}

dev.off() #reset par
png(filename = "plot2.png",
    width = 480,
    height = 480)

plot2()
dev.off()
