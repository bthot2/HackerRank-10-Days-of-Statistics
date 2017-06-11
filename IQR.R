num<-readline(prompt="Enter array length")
num<-as.integer(num)
arr<-array(dim=num)
for(i in 1:num){
  elem<-readline(prompt="Enter array elements")
  arr[i]<-as.numeric(elem)
}

prepare_arr<-function(x,y){
res_arr<-array(dim=sum(freq))
  index<-1
    for(j in 1:length(x)){
      for(k in 1:y[j]){
        res_arr[index]<-x[j]
        index<-index+1
      }
    }
  return (res_arr)
}


f <- file("stdin")
open(f)
d <- strsplit(readLines(f, warn=FALSE), split=" ")


quartile<-function(x){
  x<-sort(x)
  len<-length(x)
  mid<-(len+1)/2
  ifelse(floor(mid)==mid, {low<-mid-1;up<-mid+1}, {low<-mid-0.5; up<-mid+0.5})
  return (c(median(x[1:low]), median(x), median(x[up:len])))
}
prepared_data<-prepare_arr(elements, freq)
quart<-quartile(prepared_data)
cat(quart[3]-quart[1], "\n")