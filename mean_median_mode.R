num<-readline()
num<-as.integer(num)
arr<-array(dim=num)
for(i in 1:num){
  elem<-readline()
  arr[i]<-as.numeric(elem)
}
mode_arr<-0
mode_of_vector<-function(x){
 unique_arr<-unique(x)
 counts<-tabulate(match(arr, unique_arr))
 modes<-data.frame(unique_arr, counts)
 maximum<-max(modes$counts)
 mode_arr<-min(modes$unique_arr[modes$counts==maximum])
}

print(mean(arr))#use cat(mean(arr), "\n")
print(median(arr))
print(mode_of_vector(arr))
