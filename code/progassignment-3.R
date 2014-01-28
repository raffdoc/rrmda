#setwd("/Volumes/Macintosh Media Storage/Downloads/Safari Downloads/Computing for Data Analysis/code/assignment 3/ProgAssignment3-data/"
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
head(outcome)
ncol(outcome)
names(outcome)
# heart attack
outcome[,11] <- as.numeric(outcome[,11])
hist(outcome[,11],xlab="30-day Death Rate",main="Heart Attack 30-day Death Rate")
# heart failure mortality rate 17 column
outcome[,17] <- as.numeric(outcome[,17])

# pneumonia mortality rate 23
outcome[,23] <- as.numeric(outcome[,23])
# three histograms
par(mfrow = c(3, 1))
hist(outcome[,11],xlab="30-day Death Rate",main="Heart Attack 30-day Death Rate",xlim=c(0,20))
hist(outcome[,17],xlab="30-day Death Rate",main="Heart Failure 30-day Death Rate",xlim=c(0,20))
hist(outcome[,23],xlab="30-day Death Rate",main="Pneumonia 30-day Death Rate",xlim=c(0,20))
# plot side by side
par(mfrow=c(1,3))
hist(outcome[,11],xlab="30-day Death Rate",main=substitute(bar(X)==k,list(k=mean(outcome[,11],na.rm=TRUE))),xlim=c(0,20),prob=TRUE)
lines(density(outcome[,11],na.rm=TRUE),col="red")             # add a density estimate with defaults
abline(v=median(outcome[,11],na.rm=TRUE),col="blue")
abline(h=0)
hist(outcome[,17],xlab="30-day Death Rate",main=substitute(bar(X)==k,list(k=mean(outcome[,17],na.rm=TRUE))),xlim=c(0,20),prob=TRUE)
lines(density(outcome[,17],na.rm=TRUE),col="red") 
abline(v=median(outcome[,17],na.rm=TRUE),col="blue")
abline(h=0)
hist(outcome[,23],xlab="30-day Death Rate",main=substitute(bar(X)==k,list(k=mean(outcome[,23],na.rm=TRUE))),xlim=c(0,20),prob=TRUE)
lines(density(outcome[,23],na.rm=TRUE),col="red") 
abline(v=median(outcome[,23],na.rm=TRUE),col="blue")
abline(h=0)
# hospital 30 day mortality by state
outcome2 <- outcome[!(outcome$State %in% names(table(outcome$State)[table(outcome$State)<20])),]
death <- outcome2[, 11]
state <- outcome2$State
par(las=2,cex.axis=0.8)
state.median<-reorder(state,death, na.rm=T,median)
boxplot(death ~ state.median,ylab="30-day Death Rate",main="Heart Attack 30-day Death Rate by State")
#
par(las=2,cex.axis=0.8)
state.median<-reorder(state,death, na.rm=T,median)
boxplot(death ~ state.median,ylab="30-day Death Rate",main="Heart Attack 30-day Death Rate by State",xaxt="n")
labs <- paste0(names(table(state.median)),"(",as.numeric(table(state.median)),")")
axis(side=1,at=1:length(levels(state.median)),lab=FALSE)
text(1:length(levels(state.median)),par("usr")[3] - 1,srt=90, labels=labs, xpd=T, cex=0.7)
# part 4
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
hospital <- read.csv("hospital-data.csv", colClasses = "character")
outcome.hospital <- merge(outcome, hospital, by = "Provider.Number")
death <- as.numeric(outcome.hospital[, 11])  ## Heart attack outcome
npatient <- as.numeric(outcome.hospital[, 15])
owner <- factor(outcome.hospital$Hospital.Ownership)
library(lattice)
xyplot(death~npatient|owner,
panel=function(x,y,...){
	panel.xyplot(x,y,...)
	panel.lmline(x,y,...)
},
xlab="Number of Patients Seen",ylab="30-day Death Rate",main="Heart Attack 30-day Death Rate by Ownership")
# part 5 













