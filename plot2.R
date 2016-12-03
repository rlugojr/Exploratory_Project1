png(file = "Plot2.png",
    width = 480,
    height = 480,
    units = "px"
    )

with(hpc_set,
    plot(obsDateTime,
        Global_active_power,
        type = "l",
        xlab = "",
        ylab = "Global Active Power (kilowatts)"
    )
)

dev.off()
