#Poisson DistributionI
d <- strsplit(readLines(file('stdin'), warn=FALSE), split=" ")
d<-t(as.numeric(unlist(d)))
cat(format(round(dpois(d[2], d[1]), digits=3), nsmall=1), "\n")

#Poisson DistributionII
d <- strsplit(readLines(file('stdin'), warn=FALSE), split=" ")
d<-t(as.numeric(unlist(d)))
cost_of_A<-160+(40*(d[1]+(0.88^2)))
cost_of_B<-128+(40*(d[2]+(1.55^2)))
cat(format(round(cost_of_A,digits=3), nsmall=1),"\n" )
cat(format(round(cost_of_B,digits=3), nsmall=1),"\n" )
