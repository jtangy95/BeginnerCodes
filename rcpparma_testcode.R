library(Rcpp)
library(RcppArmadillo)

#RcppArmadillo function made by me to solve homework2 AdvStatMethod
sourceCpp('/Users/changtaeyeong/code_test/rcpp_bias_simul.cpp')
#RcppArmadillo function made by RcppArmadillo package designer
#Source code was copied from their github repository
sourceCpp('/Users/changtaeyeong/code_test/rcpparma_example.cpp')
#Rcpp function to calculate vector sum 
sourceCpp('/Users/changtaeyeong/code_test/sum.cpp')

rcpp_sum(1:10)

x=maxbias_simul(2000, 5000)
hist(x, breaks=100)

X=as.matrix(mtcars[, 4:7]) ; y=as.matrix(mtcars[,1])
fit=fastLm(X, y)
fit
