# Enter your code here. Read input from STDIN. Print output to STDOUT
data <- read.table("stdin", header = FALSE, skip = 1,sep="")

### transpose the table to be able to use mean() and median()
data <- t(data)
quartile<-function(x){
  x<-sort(x)
  len<-length(x)
  mid<-(len+1)/2
  ifelse(floor(mid)==mid, {low<-mid-1;up<-mid+1}, {low<-mid-0.5; up<-mid+0.5})
  return (c(median(x[1:low]), median(x), median(x[up:len])))
}
quart<-quartile(data)
for(i in 1:length(quart))
    cat(quart[i], "\n")

