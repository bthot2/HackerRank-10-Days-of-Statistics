#Central Limit Theorem-I
data <- strsplit(readLines(file('stdin'), warn=FALSE), split="\n")
data<-as.numeric(unlist(data))
data<-as.numeric(data)
prob<-pnorm(mean=data[3]*data[2], sd = data[4]*(sqrt(data[2])), data[1])
cat(format(round(prob, digits=4), nsmall=1), "\n")

#Central Limit Theorem-II
data <- strsplit(readLines(file('stdin'), warn=FALSE), split=" ")
data<-as.numeric(unlist(data))
prob<-pnorm(mean=data[3]*data[2], sd = data[4]*(sqrt(data[2])), data[1])
cat(format(round(prob, digits=4), nsmall=1), "\n")

