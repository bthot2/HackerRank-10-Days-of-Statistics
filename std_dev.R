f <- file("stdin")
open(f)
d <- strsplit(readLines(f, warn=FALSE), split=" ")
num<-as.numeric(d[[1]])
arr<-array(as.numeric(d[[2]]), dim=length(d[[2]]))
sqr_arr<-apply(arr, FUN = function(x){(x-mean(arr))^2},
               MARGIN = c(1))
cat(sqrt(sum(sqr_arr)/num))
