png(file = "./images/Plot3.png",
    width = 480,
    height = 480,
    units = "px"
)

with(hpc_set, plot(obsDateTime, Sub_metering_1, ylab = "Energy sub metering", xlab = "", type = "n"))
with(hpc_set, points(obsDateTime, Sub_metering_1, col = "black", type = "s"))
with(hpc_set, points(obsDateTime, Sub_metering_2, col = "red", type = "s"))
with(hpc_set, points(obsDateTime, Sub_metering_3, col = "blue", type = "s"))
legend("topright", lty = 1, col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()
