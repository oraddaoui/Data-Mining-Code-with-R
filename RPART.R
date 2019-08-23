### Data ### 
dat = read.csv("C://DATA.CSV", header=F)
n = nrow(dat);
Y = as.matrix(dat[,1:4]); P = ncol(Y)
G = dat[,5] # grouping variable #
library(rpart)
# Cross-Validation # # leave-1-out #
dat = data.frame(Y,G); G.class = NULL
for(i in 1:n) {
dat.i = dat[i,]; dat.xi = dat[-i,];
set.seed(23)
fit = rpart(G~.,data=dat.xi,method="class") # rpart #
G.lab = predict(fit,newdata=dat.i,type="class")[[1]]
G.class = c(G.class,as.character(G.lab)) }
ct.cv = table(G,G.class) # confusion #
ct.cv
   G.class
# Error Rate #
ct = ct.cv
error.rate = 1-sum(diag(ct))/n
c(error.rate=error.rate)



