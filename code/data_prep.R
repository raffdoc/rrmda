# read data 
outcome <- read.csv("data/outcome-of-care-measures.csv", colClasses = "character")
#
outcome[,11] <- as.numeric(outcome[,11])
outcome[,17] <- as.numeric(outcome[,17])
outcome[,23] <- as.numeric(outcome[,23])