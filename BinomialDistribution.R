#Binomial Distribution I
boy<-readline(prompt="Enter boy's ratio")
boy<-as.double(boy)
girl<-readline(prompt="Enter girl's ratio")
girl<-as.double(girl)
p<-boy/(boy+girl)
binom=0.0
for(i in 3:6)
  binom<-binom+dbinom(x=i,size = 6,prob=p, log=FALSE)

#Binomial Distribution II
d <- strsplit(readLines(file('stdin'), warn=FALSE), split=" ")
d<-as.numeric(unlist(d))
percentage<-d[1]
n<-d[2]
p<-percentage/100
no_more_than_two<-sum(dbinom(x=0:2,size = n,prob=p, log=FALSE))
cat(format(round(no_more_than_two, digits=3),nsmall=1), "\n")
atleast_two<-sum(dbinom(x=2:10,size = n,prob=p, log=FALSE))
cat(format(round(atleast_two, digits=3),nsmall=1), "\n")

