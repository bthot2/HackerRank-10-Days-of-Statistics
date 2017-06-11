num<-readline(prompt="Enter number")
num<-as.integer(num)
arr1<-array(dim=num)
arr2<-array(dim=num)
for(i in 1:num){
  elem<-readline(prompt="Enter 1 array")
  arr1[i]<-as.numeric(elem)
}
for(i in 1:num){
  elem<-readline(prompt="Enter 2 array")
  arr2[i]<-as.numeric(elem)
}
format(round(weighted.mean(arr1, arr2), digits=1), nsmall=1)

data <- read.table("stdin", header = FALSE, skip = 1,sep="")

### transpose the table to be able to use mean() and median()
data <- t(data)