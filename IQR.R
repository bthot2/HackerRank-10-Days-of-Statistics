f <- file("stdin")
open(f)
data <- strsplit(readLines(f, warn=FALSE), split=" ")
prepare_arr<-function(x,y){
    res_arr<-array(dim=sum(y))
    index<-1
    for(j in 1:length(x)){
      for(k in 1:y[j]){
        res_arr[index]<-x[j]
        index<-index+1
      }
    }
  return (res_arr)
}
quartile<-function(x){
  x<-sort(x)
  len<-length(x)
  mid<-(len+1)/2
  ifelse(floor(mid)==mid, {low<-mid-1;up<-mid+1}, {low<-mid-0.5; up<-mid+0.5})
  return (c(median(x[1:low]), median(x[up:len])))
}
prepared_data<-prepare_arr(as.numeric(data[[2]]), as.numeric(data[[3]]))
quart<-quartile(prepared_data)
cat(format(round(quart[2]-quart[1], digits=1), nsmall=1), "\n")
