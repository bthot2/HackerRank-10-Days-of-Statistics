#Normal Distribution-I
d <- strsplit(readLines(file('stdin'), warn=FALSE), split=" ")
d<-as.numeric(unlist(d))
pnorm(mean = 20, sd = 2, lower.tail = TRUE, q=19.5)
f20<-pnorm(mean = 20, sd = 2, lower.tail = FALSE, q=19.5)
f22<-pnorm(mean = 22, sd = 2, lower.tail = FALSE, q=19.5)
f22-f20

#Normal Distribution-II
cat(round(pnorm(80,mean = 70, sd = 10, lower.tail = FALSE)*100, digits=2), '\n')
cat(round(pnorm(60,mean = 70, sd = 10, lower.tail = FALSE)*100, digits=2), '\n')
cat(round(pnorm(60,mean = 70, sd = 10, lower.tail = TRUE)*100, digits=2), '\n')
