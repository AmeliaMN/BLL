library(readr)
library(dplyr)

BLL <- read_csv("C:/Users/choco/Desktop/SPRING 2018/SDS 236/Freeing Data/tabula-2015_annual_report_2_7_17_551735_7.csv",col_names=FALSE,na = c("", "NA", "---", "**"))

BLL<-BLL[-c(1,2),]

#BLL[BLL=="**"] <- NA

BLL <- BLL[!is.na(BLL$X1),]

BLL<-BLL %>%
  filter(X1!="County")


cols <- colnames(BLL[2:10])

BLL <- data.frame(lapply(BLL, gsub, pattern = ",", replacement = ""))

list1<-""

colnames(BLL) <-c("County","children_under_age6", "all_less5_total", "capillary_greater5_total", "venuous_5to14_total", "venuous_greater15_total", "venuous_greater5_total", "venuous_greater5_percent", "all_greater5_total", "all_greater5_percent")


write_csv(BLL, "C:/Users/choco/Desktop/SPRING 2018/SDS 236/Freeing Data/BLL_under6_medicaid_county_2015.csv")
