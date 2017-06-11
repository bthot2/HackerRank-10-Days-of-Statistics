num<-readline(prompt="Enter array length")
num<-as.integer(num)
arr<-array(dim=num)
for(i in 1:num){
  elem<-readline(prompt="Enter array elements")
  arr[i]<-as.numeric(elem)
}

quartile<-function(x){
  x<-sort(x)
  len<-length(x)
  mid<-(len+1)/2
  ifelse(floor(mid)==mid, {low<-mid-1;up<-mid+1}, {low<-mid-0.5; up<-mid+0.5})
  return (c(median(x[1:low]), median(x), median(x[up:len])))
}
quart<-quartile(arr)
#or
result<-quantile(sort(arr), probs=c(0.25,0.5,0.75), type=6)

for(i in 1:length(result))
  cat(quart[i], "\n")

