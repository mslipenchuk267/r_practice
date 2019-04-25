# dates_refresher.R
library(lubridate)

# Read data in 
Data  <- read.csv("https://www1.ncdc.noaa.gov/pub/data/cdo/samples/PRECIP_HLY_sample_csv.csv")
# Convert dates to ymd_hm format
Data_formatted <- Data %>% 
  select(TimeStamp = DATE) %>% 
  mutate(TimeStamp = ymd_hm(TimeStamp))
# Get difference in time between last and 1st entry
difftime(Data_formatted[3,1],Data_formatted[1,1])
# Visual formatting - Get date/time component seperately 
Dates <- format(Data_formatted, format="%d-%m-%y") # d-m-y
Times  <- format(Data_formatted, format="%H:%M:%S") # h:m:s
