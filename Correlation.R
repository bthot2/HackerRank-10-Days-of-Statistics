data <- read.table("stdin",header=FALSE, skip=1)
data <- t(data)
correlation<-cor.test(data[,1], data[,2], method="pearson")
cat(round(correlation$estimate, digits=3),"\n")


f<-file('stdin')
open(f)
data <- read.table(f,header=FALSE, skip=1)
close(f)
data <- t(data)
correlation<-cor.test(data[,1], data[,2], method="spearman")
cat(round(correlation$estimate, digits=3),"\n")

