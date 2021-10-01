Rgibbs <- function(N ,thin) {
  mat <- matrix(0,nrow=N,ncol=2) 
  x <- y <- 0
  for (i in 1:N) {
    for (j in 1:thin) {
      x <- rgamma(1,3,y*y + 4) # 3rd arg is rate 
      y <- rnorm(1,1/(x + 1),1/sqrt(2*(x + 1)))
      }
    mat[i,] <- c(x,y) 
    }
  return(mat)
}
library(tictoc)
tic('Gibbs sampler')
res=Rgibbs(10000, 500)
toc()
head(res)
x=as.vector(res[,1])
y=as.vector(res[,2])
install.packages("plot3D")
library(plot3D)
xcut<-cut(x,20)
ycut<-cut(y,20)
z<-table(xcut, ycut)
print(z)
hist3D(z=z)
hist3D(z)
library(plot3D)
hist3D(z=z, border='black')


backfit <- function(Xstd, yc, h2 = 0.5, nIter = 20L) {
  n <- nrow(Xstd); p <- ncol(Xstd) 
  stopifnot(length(yc) == n)
  e0=matrix(rnorm(n), ncol=1)
  lambda <- p * (1 - h2)/h2
  SSx <- colSums(X^2)  # the diagonal elements of crossproduct
  bHat <- rep(0,p)  # initial values bj=zero
  e <- e0  # initial model residuals
  for(i in 1:nIter){   # loop for iterations of the algorithm
    for(j in 1:p){  # loop over predictors
      yStar <- e+X[,j] * bHat[j] # forming offsets 
      bHat[j] <- sum(X[,j] * yStar)/(SSx[j]+lambda) 
      e <- yStar-X[,j] * bHat[j]  # update residuals
    }
  }
  bHat
}

n=10
p=12

X=matrix(rnorm(n*p), ncol=p, nrow=n)
X=cbind(1, X)
y=matrix(rnorm(n), ncol=1)
b=backfit(X, y)
X%*%b
y

