png(file = "./images/Plot1.png",
    width = 480,
    height = 480,
    units = "px"
)

hist(hpc_set$Global_active_power,
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency",
     main = "Global Active Power",
     col = "red"
)

dev.off()
