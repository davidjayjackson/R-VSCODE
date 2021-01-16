# library(RSQLite)
library(ggplot2)
library(scales)
library(dplyr)
library(readr)
###
df <- read_csv("./data.csv")  %>% filter(geoId == "US") %>% 
select(dateRep, cases_weekly, deaths_weekly, geoId) %>%
rename(Ymd = dateRep,
Cases = cases_weekly,
Deaths = deaths_weekly)
df$Ymd <- as.Date(df$Ymd, format = "%d-%m-%Y")
###

ggplot()+ geom_col(data = df, aes( x = Ymd, y = Cases))
ggplot()+ geom_col(data = df, aes( x = Ymd, y = Deaths))