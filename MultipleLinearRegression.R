data<-read.csv("input", sep=" ", header=FALSE)
n=data[1,2]
x1=as.data.frame(data[2:n,])
predict1<-as.matrix(data[n+2:dim(data)[1],1:2], nrow=2, ncol=2)
multiple_model=lm(x1$V3~x1$V1+x1$V2)
intercept=multiple_model$coefficients[1]
x1_coeff=multiple_model$coefficients[2]
x2_coeff=multiple_model$coefficients[3]
output<-apply(X = predict1, FUN = function(x){
  +     intercept+(x[1]*x1_coeff)+(x2_coeff*x[2])}, MARGIN = c(1))
for(i in na.omit(output)){
  if(i!="NA")
    cat(round(i, 3), "\n")
}