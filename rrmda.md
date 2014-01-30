













This is a Reproducable researche Rmarkdow example.
========================================================



**Abstract**


__Objective__


__Methods__


__Results__


__Conlutions__

Introduction
------------
This is how to cite in knitr with knitrcitations (<a href="">Bentall & Bono, 1968</a>). 


Material and methods
------------
This is the first table __Table__ 1.
See next Figure 1.







```r
cols <- brewer.pal(9,"Blues")
pal <- colorRampPalette(cols)
par(mfrow=c(1,3))
hist(outcome[,11],xlab="30-day Death Rate",
     main=substitute(bar(X)==k,list(k=mean(outcome[,11],na.rm=TRUE))),
     xlim=c(0,20),ylim=c(0,0.3),prob=TRUE,col=pal(20))
lines(density(outcome[,11],na.rm=TRUE),col="red")             # add a density estimate with defaults
abline(v=median(outcome[,11],na.rm=TRUE),col="blue")
abline(h=0)
hist(outcome[,17],xlab="30-day Death Rate",
     main=substitute(bar(X)==k,list(k=mean(outcome[,17],na.rm=TRUE))),
     xlim=c(0,20),ylim=c(0,0.3),prob=TRUE,col=pal(20))
lines(density(outcome[,17],na.rm=TRUE),col="red") 
abline(v=median(outcome[,17],na.rm=TRUE),col="blue")
abline(h=0)
hist(outcome[,23],xlab="30-day Death Rate",
     main=substitute(bar(X)==k,list(k=mean(outcome[,23],na.rm=TRUE))),
     xlim=c(0,20),ylim=c(0,0.3),prob=TRUE,col=pal(20))
lines(density(outcome[,23],na.rm=TRUE),col="red") 
abline(v=median(outcome[,23],na.rm=TRUE),col="blue")
abline(h=0)
```

<div class="rimage center"><img src="fig/plot1.png" title="A histogram and density estimates for three outcomes." alt="A histogram and density estimates for three outcomes." class="plot" /></div>


As you can deduce from the Figure 1.


```r
fig.cap2 <- paste("A boxplot of median moratlity accross the regeons.")
outcome2 <- outcome[!(outcome$State %in% names(table(outcome$State)[table(outcome$State)<20])),]
death <- outcome2[, 11]
state <- outcome2$State
par(las=2,cex.axis=0.8)
state.median<-reorder(state,death, na.rm=T,median)
par(las=2,cex.axis=0.8)
state.median<-reorder(state,death, na.rm=T,median)
boxplot(death ~ state.median,ylab="30-day Death Rate",main="Heart Attack 30-day Death Rate by State",xaxt="n")
labs <- paste0(names(table(state.median)),"(",as.numeric(table(state.median)),")")
axis(side=1,at=1:length(levels(state.median)),lab=FALSE)
text(1:length(levels(state.median)),par("usr")[3] - 1.5,srt=90, labels=labs, xpd=T, cex=0.7)
```

<div class="rimage center"><img src="fig/plot2.png" title="A boxplot of median moratlity accross the regeons." alt="A boxplot of median moratlity accross the regeons." class="plot" /></div>

There is other image here Figure 0.
