png(file = "./images/Plot4.png",
    width = 480,
    height = 480,
    units = "px"
)

par(mfrow = c(2,2))

with(hpc_set,{

    #plot upper-left
    plot(obsDateTime,
            Global_active_power,
            type = "l",
            xlab = "",
            ylab = "Global Active Power"
    )

    #plot upper-right
    plot(obsDateTime,
            Voltage,
            type = "l",
            xlab = "datetime",
            ylab = "Voltage"
    )

    #plot lower-left
    with(hpc_set, plot(obsDateTime, Sub_metering_1, ylab = "Energy sub metering", xlab = "", type = "n"))
    with(hpc_set, points(obsDateTime, Sub_metering_1, col = "black", type = "s"))
    with(hpc_set, points(obsDateTime, Sub_metering_2, col = "red", type = "s"))
    with(hpc_set, points(obsDateTime, Sub_metering_3, col = "blue", type = "s"))
    legend("topright", lty = 1, col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), bty = "n")

    #plot lower-right
    plot(obsDateTime,
         Global_reactive_power,
         type = "l",
         xlab = "datetime"
    )

})

dev.off()
