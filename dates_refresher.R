# Dates refresher
library(lubridate)

Data  <- read.csv("https://www1.ncdc.noaa.gov/pub/data/cdo/samples/PRECIP_HLY_sample_csv.csv")

Data_formatted <- Data %>% select(TimeStamp = DATE) %>% mutate(TimeStamp = ymd_hm(TimeStamp))

# Get date/time component seperately
Dates <- format(Data_formatted, format="%d-%m-%y") # d-m-y
Times  <- format(Data_formatted, format="%H:%M:%S") # h:m:s
