# Data #
dat = read.csv("C://DATA.CSV", header=F)
n = nrow(dat);
Y = as.matrix(dat[,1:4]); P = ncol(Y)
G = dat[,5] # grouping variable #
# Call library #
library(e1071) # Support Vector Machine #
# Cross-Validation # # leave-1-out #
dat = data.frame(Y,G); G.class = NULL
for(i in 1:n) {
dat.i = dat[i,]; dat.xi = dat[-i,];
set.seed(23)
fit = svm(G~.,data=dat.xi,type="C-classification") #svm#
G.lab = predict(fit,newdata=dat.i,type="class")[[1]]
G.class = c(G.class,as.character(G.lab)) }
ct.cv = table(G,G.class) # confusion matrix #
ct.cv
# Error Rate #
ct = ct.cv
error.rate = 1-sum(diag(ct))/n
c(error.rate=error.rate)

