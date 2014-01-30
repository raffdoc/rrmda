# read data 
outcome <- read.csv("data/outcome-of-care-measures.csv", colClasses = "character")
#
outcome[,11] <- as.numeric(outcome[,11])
outcome[,17] <- as.numeric(outcome[,17])
outcome[,23] <- as.numeric(outcome[,23])
# preparing hostpital data
hospital <- read.csv("data/hospital-data.csv", colClasses = "character")
outcome.hospital <- merge(outcome, hospital, by = "Provider.Number")
death <- as.numeric(outcome.hospital[, 11])  ## Heart attack outcome
npatient <- as.numeric(outcome.hospital[, 15])
owner <- factor(outcome.hospital$Hospital.Ownership)
