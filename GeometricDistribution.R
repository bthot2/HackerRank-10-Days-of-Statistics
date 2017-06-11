#Geometric Distribution I
f <- file("stdin")
open(f)
d <- strsplit(readLines(f, warn=FALSE), split=" ")
first_defect_after<-as.numeric(d[[2]])-1
ratio<-array(as.numeric(d[[1]]), dim=length(d[[1]]))
cat(round(dgeom(first_defect_after,ratio[1]/ratio[2]),digits=3),'\n')

#Geometric Distribution II
f <- file("stdin")
open(f)
d <- strsplit(readLines(f, warn=FALSE), split=" ")
first_defect_after<-as.numeric(d[[2]])-1
ratio<-array(as.numeric(d[[1]]), dim=length(d[[1]]))
cat(round(sum(dgeom(0:4,ratio[1]/ratio[2])),digits=3),'\n')