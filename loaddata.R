getwd()


##########################################################################
#read data
loaddata <- function(){
    library(dplyr)
    
    filepath <- "./data/household_power_consumption.txt"
    data <- read.table(filepath,
                       sep = ";",
                       header =  TRUE,
                       comment.char = "",
                       stringsAsFactors = FALSE)
    #x <- as.POSIXct(unique(data$Date), format = "%d/%m/%Y")
    #unique(as.Date(x))
    #data[6841,]
    #r <- rownames(data[data$Global_active_power == "?",])
    
    unique(data$Date)
    #convert date to as.POSIXct
    data$Date  <- as.POSIXct(data$Date, format = "%d/%m/%Y")
    
    #head(data$Date)
    data$Global_active_power <- as.numeric(data$Global_active_power)
    #data$Date >= as.POSIXct("2007-02-01") 
    filtered <- data[(data$Date >= as.POSIXct("2007-02-01") & data$Date <= as.POSIXct("2007-02-02")), ]
    filtered <- filtered %>%
        mutate(weekday = weekdays(filtered$Date))
    filtered$weekday <- as.factor(filtered$weekday)
    
    filtered <- filtered %>%
        mutate(newDate = as.POSIXct(paste(filtered$Date, filtered$Time))) 
    
    filtered
}

