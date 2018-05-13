library(readr)
library(dplyr)
library(tidyr)

BLL_1and2_county_2012 <- read_csv("C:/Users/Fatima/Downloads/BLL_1and2_county_2012.csv",col_names = FALSE, na = c("", "NA", "---", "**"))

BLL_1and2_county_2012 <- BLL_1and2_county_2012 %>%
  rename(county=X1, percent_pre1950_housing =X2, percent_pre1978_housing =X3, 
         children_1and2_age =X4, total_n =X5 , total_percent = X6, 
         capillary_or_venous_less5 = X7, capillary_or_venous_5to9 = X8, 
         capilary_10to14_total = X9, venous_10to14_total = X10, 
         capilary_15to19_total = X11, venous_15to19_total = X12, 
         capilary_20to44_total = X13, venous_20to44_total = X14, 
         capilary_greater45_total = X15, venous_greater45_total = X16, 
         all_greater5_total = X17, all_greater10_total = X18, 
         all_greater5_percent = X19, all_greater_10_percent = X20) 

write_csv(BLL_1and2_county_2012, "clean2012data.csv")
getwd()
#comment
