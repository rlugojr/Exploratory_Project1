library(chunked)
library(tibble)
library(dplyr)
library(dtplyr)
library(data.table)
library(reshape2)
library(lubridate)
library(stringr)
library(tidyr)


rm(list = ls())

#use readr::readread date field first so that we can determin records within timeframe.
hpc <- read_delim("household_power_consumption.txt", ";", col_names = TRUE, na = c("?",NA), col_types = cols(
    Date = col_character(),
    Time = col_character(),
    .default = col_double()
))

hpc_set <- hpc[(hpc$Date == "1/2/2007" | hpc$Date == "2/2/2007"),]

rm("hpc")

obsDateTime <- paste(hpc_set$Date,hpc_set$Time)

#Convert Date column values into true R date values.
hpc_set$Date <- parse_date(hpc_set$Date,"%d/%m/%Y")

#Convert Time column values into true R time values
hpc_set$Time <- parse_time(hpc_set$Time,"%H:%M:%S")

obsDateTime <- parse_date_time2(obsDateTime, "%d/%m/%Y %H:%M:%S")

hpc_set <- cbind(obsDateTime,hpc_set)

rm("obsDateTime")




