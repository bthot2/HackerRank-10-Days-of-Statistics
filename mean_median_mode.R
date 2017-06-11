data <- read.table("stdin", header = FALSE, skip = 1,sep="")
data <- t(data)
    
arr_mode<-function(data){
 unique_arr<-unique(data)
 counts<-tabulate(match(data, unique_arr))
 modes<-data.frame(unique_arr, counts)
 maxi<-max(modes$counts)
 mode_arr<-min(modes$unique_arr[modes$counts==maxi])
}
cat(mean(data), sep="\n")
cat(median(data), sep="\n")
cat(arr_mode(data), sep="\n")
