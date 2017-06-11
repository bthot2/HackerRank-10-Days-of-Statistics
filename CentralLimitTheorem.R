data <- strsplit(readLines(file('stdin'), warn=FALSE), split=" ")
data<-as.numeric(unlist(data))
prob<-pnorm(mean=data[3]*data[2], sd = data[4]*(sqrt(data[2])), data[1])
cat(format(round(prob, digits=3), nsmall=1), "\n")


data <- strsplit(readLines(file('stdin'), warn=FALSE), split=" ")
data<-as.numeric(unlist(data))
prob<-pnorm(mean=data[3]*data[2], sd = data[4]*(sqrt(data[2])), data[1])
cat(format(round(prob, digits=3), nsmall=1), "\n")


data <- strsplit(readLines(file('stdin'), warn=FALSE), split="\n")
data<-as.numeric(unlist(data))
mean<-data[2]
stddev<-data[3]
n<-data[1]
z<-data[5]
lower<-mean-(z*(stddev/sqrt(n)))
upper<-meanu+(z*(stddev/sqrt(n)))
cat(format(round(lower, digits=2), nsmall=1), "\n")
cat(format(round(upper, digits=2), nsmall=1), "\n")

