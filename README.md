# BLL: Michigan  childhood blood lead levels

This data comes from PDF reports released by the [Michigan Department of Health & Human Services](http://www.michigan.gov/mdhhs/). The files are hosted on their [Data and Research](http://www.michigan.gov/lead/0,5417,7-310-66221_66223---,00.html) page. My Spring 2018 [Data Journalism class](http://www.science.smith.edu/~amcnamara/sds236/) used [Tabula](http://tabula.technology/) to free tables from the PDFs and convert them to CSV datafiles. 

The PDFs in question are:

- [2012 Annual Data Report on Blood Lead Levels of Children in Michigan](http://www.michigan.gov/documents/mdch/2012AnnualDataReportOnBloodLeadLevels_419508_7.pdf)
- [2013 Data Report on Childhood Lead Testing and Elevated Levels](http://www.michigan.gov/documents/mdhhs/2013_Child_Lead_Testing_and_Elevated_Levels_Report_515288_7.pdf)
- [2014 Data Report on Childhood Lead Testing and Elevated Levels: Michigan](http://www.michigan.gov/documents/mdhhs/2014_Child_Lead_Testing_and_Elevated_Levels_Report_515233_7.pdf)
- [2015 Data Report on Childhood Lead Testing and Elevated Blood Lead Levels: Michigan](http://www.michigan.gov/documents/lead/2015_annual_report_2_7_17_551735_7.pdf)
- [2016 Provisional Data Report on Childhood Lead Testing and Elevated Levels: Michigan](http://www.michigan.gov/documents/lead/MI-CLPPP_2016_Provisional_Report_603438_7.pdf)

Each table from these files was extracted into a single CSV file. The file naming convention is as follows: 
```BLL_[age group of children]_[geographic area]_[year]```

For example, `BLL_under6_zip_2016` is the data on children under six, by zip code, in 2016. 

The common age groups of children are

- under 6
- ages 1 and 2
- all ages

Common geographic areas are

- county
- zip code
- community (receiving funding for lead poisoning prevention)

We are also attempting to standardize the variable names, although it appears that slightly different measurements and cutoffs were used across years. The [Data Dictionary](BLL_datadictionary.csv) will evolve as we work through the tables. 


