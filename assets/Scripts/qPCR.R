# To import the data, we can either read the Excel file directly (using
# the 'readxl' package, or first export to CSV and read the resulting
# file into R
setwd("/Users/Rachel/Data-analysis-in-practice/docs/assets/exercises/qPCR")
# Read Excel file directly
library(readxl)
qPCR <- read_excel("qPCR.xlsx")
# This produces a Tibble; if you are not used to work with Tibble,
# you can convert it back to a data frame
data <- as.data.frame(qPCR)
# Note that we will still need to clean this file (see below
summary(data)

head(data$ct)
# Read files after it was exported from Excel:
# Export file in CSV format.
# Warning: the options you use for read.table depend on how you exported
# the data
data <- read.table("qPCR-xls.csv", header=TRUE, sep="\t", na.strings="?",                   quote="", as.is=TRUE)

# At this point we have to make sure that we have meaningful names for
# the columns; in the rest of this script we use those from the CSV file.

# We have realized that the Ct columns contains issues; we can find what
# they are by trying to convert the column to a numeric and check which
# numbers were not converted:
summary(data)
converted <- as.numeric(data$ct)
which(is.na(converted))
data$ct[which(is.na(converted))]
# We have a value 17,23 (with a comma instead of a decimal point),
# which we can correct in the following way:
data$ct[data$ct == "17,21"] <- 17.21
data$Ct <- as.numeric(data$ct)
summary(data)
# It works now
data$group
# Warnings:
#  * you may have to change the "?" in order to transform it to NA (if you
#    used the read.table() command above, it was already taken care of.
#  * you may still have to remove the first (empty) line 
#    data <- data[-1,]

# We now have to split the column "SampleName" into Genotype and Treatment
#
# Using base R:
splitname <- strsplit(data$group, " ")
newcolumns <- do.call(rbind, splitname)
colnames(newcolumns) <- c("Genotype", "Treatment")
data <- cbind(data, newcolumns)

# Using the tidyverse
library(dplyr) 
library(tidyr)
splitdata <- data %>%
  separate(SampleName, c("Genotype", "Treatment"), " ")
# Note that in this case, we do not have the SampleName column anymore.


# ... more analysis steps here ?


# How to summarize the technical replicates into 1 value ?

# With base R: the aggregate command takes the value to be aggregated,
# a list of values to keep and aggregate on, and the function to use
# for aggregation
agdata <- aggregate( data$Ct,
                     list( ID=data$sample.ID,
                           Genotype=data$Genotype,
                           Treatment=data$Treatment),
                     FUN=mean)   



# Using the tidyverse:
agdata <- as.data.frame( data %>% 
                           group_by(`Sample.ID`, Gene, Genotype, Treatment) %>%
                           summarize(meanCt = mean(Ct, na.rm = TRUE)))


## WT effect of treatment

agdata_WT <- agdata[agdata$Genotype=="WT",]
t.test(agdata_WT[agdata_WT$Treatment=="T","x"],agdata_WT[agdata_WT$Treatment=="C","x"])

## check ANOVA for Genotype and treatment interaction
s <- aov(x~Genotype:Treatment, data=agdata)
summary(s)

