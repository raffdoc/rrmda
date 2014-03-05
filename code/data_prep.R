# read data 
outcome <- read.csv("data/outcome-of-care-measures.csv", colClasses = "character", na.string="Not Available")
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
# example from melanoma data
library(boot)

# Set time to years instead of days
melanoma$time_years <- 
  melanoma$time / 365.25

# Factor the basic variables that 
# we're interested in
melanoma$status <- 
  factor(melanoma$status, 
         levels=c(2,1,3),
         labels=c("Alive", # Reference
                  "Melanoma death", 
                  "Non-melanoma death"))
melanoma$sex <- 
  factor(melanoma$sex,
         labels=c("Male", 
                  "Female"))

melanoma$ulcer <- 
  factor(melanoma$ulcer,
         labels=c("Present", 
                  "Absent"))
# Setup needed for the rms coxph wrapper
ddist <- datadist(melanoma)
options(datadist = "ddist")
fit <- cph(Surv(melanoma$time, melanoma$status=="Melanoma death") ~
             sex + age + thickness + ulcer, data=melanoma)