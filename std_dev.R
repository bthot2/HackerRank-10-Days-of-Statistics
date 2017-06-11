num<-readline(prompt="Enter array length")
num<-as.integer(num)
arr<-array(dim=num)
for(i in 1:num){
  elem<-readline(prompt="Enter array elements")
  arr[i]<-as.numeric(elem)
}
sqr_arr<-apply(arr, FUN = function(x){(x-mean(arr))^2},
               MARGIN = c(1))
sqrt(sum(sqr_arr)/5)