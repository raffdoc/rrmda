













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








```r
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
```

<div class="rimage center"><img src="fig/plot3.png" title="A histogram and density estimates for three outcomes." alt="A histogram and density estimates for three outcomes." class="plot" /></div>




