data <- read.table("stdin",header=FALSE)
data<-as.numeric(unlist(data))
x=data[1:5]
y=data[6:10]
linear_model=lm(y~x)
intercept=linear_model$coefficients[1]
coeff=linear_model$coefficients[2]
predict<-intercept+(80*coeff)
cat(round(predict, digits=3), "\n")


