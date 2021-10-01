##
x=3//5;
y=4//5;
print(x+y)

##
a=zeros(5);
b=ones(Int, 5,3);
println(a,) ; println(b)

##
b[:,2]=[2,3,1,4,5];
b[1,:]=[3,5,1];
b
##
mapslices(sum, b, dims=1)
##
mapslices(sum, b, dims=2)
##
a=[1,2,3,4,5];
a=map(x->x^2,a)
##
map(+, a, ones(Int, 5))
##
x<2 ? a=a+ones(Int, 5) : a=a-ones(Int, 5) ;
a
##
if y>1 
    a=a+ones(Int, 5)
elseif y<1
    a=a-ones(Int, 5)
else 
    a=a*1.5
end
a
##
A=[1 2
    3 4];
B=[1 0
    0 2];
A*B
##
A.*B
##    
X=[ones(Int, 2,2) [3; 4]
    [5 6]   9]
##
transpose(X)
##
X'
## 
for i in 1:5
    a[i]=a[i]*2;
end
a
##
C=[1 2 3 ; 4 5 6];
println(size(C, 1)); println(size(C, 2));
##
tup=(alpha=1, beta=2)
## 
D=hcat([1 2 3], [10 9 8])
##
E=hcat([1, 2, 3], [10,9,8])
##
F=vcat([1 5], [6 7], [10 15])

##
a=collect(1:10);
b=rand(1:10, 10)
##
max(1,5,2,7,8)
##
maximum([1,5,2,7,8])
##
A=[1 2 ; 4 3];
sum(A);
##
sum(A, dims=1)
##
sum(A, dims=2)
##
sum(A, dims=[1,2])
##
sort([1,5,2,7,8])
##
sort([1,5,2,7,8], rev=true)
##
sort(A, dims=1)
##
sort(A, dims=2)
##
x=collect(1:10);
filter!(z->z>3, x);
x


## 
using RCall

x=randn(1000)
R"""
hist($x, main="Plotting a Julia vector")
"""

##
R"""
library(ggplot2)
qplot($x)
"""

##
x=R"""
round(rnorm(15, mean=5, sd=1),4)
"""
y= collect(x)

##
using Random
Random.seed!(123)
x=rand(1_000_000_000)
@time sum(x)

##
using Distributions
function jgibbs(N::Integer, thin::Integer)
    mat = Array{Float64}(undef, N, 2)
    x = y = 0.
    for i in 1:N
        for j in 1:thin
            x = rand(Gamma(3.,1. /(y*y+4.))) #shape/scale
            y = rand(Normal(1. /(x+1.),1. /sqrt(2. *(x+1.))))
        end
        mat[i,1] = x; mat[i,2] = y
    end
    mat
end
##
jgibbs(10000,500)
@elapsed jgibbs(10000,500)

##
function sumsq(V::Vector{T}) where T<:Number
    s = zero(T)
    for v in V ; s +=v*v ; end
    return s
end
##
sumsq(collect(1:5))
##
char=["a", "b", "c"];
sumsq(char)

##
source = collect(1:3); destination =collect(0:2); println(destination)
##
x=copy(destination); println(destination)
x[1]=7; println(destination) ; println(x)
##
y=destination ; println(destination)
y[1]=7; println(y) ; println(destination)
# copy is just a copy but `=` performs as the same pointer.

##
source = collect(1:3); destination =collect(0:2); println(destination)
##
y=destination ; println(destination)
y=y.+10 ; println(y) ; println(destination)
# Note that `y[1]=7` is a mutation but `y=y.+10` is an assignment, not a mutation. Indeed, `y.+=10` is a mutation.

##
copy!(destination, source) ; println(destination)

##
x=randn(5,3);
x
##
z=x[1:2, 2:3];
z[2,2]=0.0;
x
##
@views z=x[1:2, 2:3];
z[2,2]=0.0;
x
##
y=x
## 
pointer(x)==pointer(y)
##
y[:, 2].=0;
y
##
x 
##
x=randn(5,3)
##
y=x
## 
pointer(x)==pointer(y)
##
x[:, 2].=0;
x
##
y 

##
x=randn(5,3)
w=copy(x)
pointer(x)==pointer(w)
##
w[:,2].=0;
w
##
x
##
a=1.0
b=a 
b
##
a=2.0
b
##
a=1.0
b=a
b
##
b=2.0
a


##
x,y,z = randn(5,3), randn(5,2), rand(3,5);


##
using LinearAlgebra
x=rand(1:10, 5);
norm(x)
##
X=randn(3,3)
tr(X) ; transpose(X) ; det(X) ; rank(X)


##
using SparseArrays
X=sprandn(10,10, .1)
##
Xfull=convert(Matrix{Float64}, X)
##
sparse(Xfull)
##
β=randn(10);
X*β

##
x=rand(1:10, 7)
sort(x)
##
x
sort!(x)
##
x

##
[(2i*j) for i in 1:3, j in 1:2]

##
using Distributions
methods(Normal)
##
n1=Normal(5, 0.25)
##
(xvalues= LinRange(1,3, 21))'
##
[mean(n1) median(n1) modes(n1) std(n1) var(n1)]
##
[skewness(n1) kurtosis(n1)]
##
[pdf(n1, xvalues) cdf(n1, xvalues) quantile(n1, LinRange(0,1,21))]


##
function matprod(A::Matrix{T}, B::Matrix{T}) where T<:Number
    m,n = size(A); p,q = size(B)
    n == p || error("incompatible dimensions")
    res = A*B
    return res
end
##
A=rand(5,3)
B=rand(3,2)
matprod(A,B)

##
logit(p::Real) = 0 < p < 1 ? log(p/(1-p)) : error("argument of logit function should be p in (0,1)")
logit(3) 
##
logit(0.5)
##
logit(V::Vector{Float64})=[logit(v) for v in V]
a=LinRange(0.1, 0.9, 9);
a=collect(a)
##
logit(a)'

##
A=rand(5,3) ; b= rand(5); x= A\b
##
A*x 
##
b
##
A'A*x
##
A'b

##
X=[ones(10) rand(10,2)]; 
X' 
##
β=rand(Normal(5, 2),3); β'
##
y=X*β+rand(Normal(0, 0.3), size(X, 1))
##
β̂=inv(X'X)X'y
##
X\y

##
Ch=cholesky(X'X)

##
function backfit(X::Matrix, y::Vector; h::Float64=0.5, nIter::Int64=20)
    n,p=size(X)
    length(y)==n || error("Dimension correspondence error occurs")
    e0=randn(n)
    lambda=p*(1-h)/h
    SSx=mapslices(sum, X.^2,dims=1)
    beta=zeros(p)
    e=copy(e0)
    for i in 1:nIter
        for j in 1:p
            yStar=e+X[:,j]*beta[j]
            beta[j]=X[:,j]'yStar/(SSx[j]+lambda)
            e=yStar-X[:,j]*beta[j]
        end
    end
    return beta
end

##
n=10; p=12;

X=randn(n,p)
X=[ones(n) X]
y=randn(n)
##
b=backfit(X, y, 0.5 , 1000)
##
b=backfit(X, y, nIter=1000)
# Thanks to semicolon ; in the definition of `backfit` for the keywords, we can use keyword argument "nIter" to call the funciton.