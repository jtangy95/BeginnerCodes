library(Rcpp)
library(RcppArmadillo)
sourceCpp('/Users/changtaeyeong/code_test/sum.cpp')
rcpp_sum(1:10)

rm(rcpp_sum)

src='
#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
double rcpp_sum(NumericVector v){
    double sum = 0;
    for(int i=0; i<v.length(); ++i){
        sum += v[i];
    }
    return(sum);
}'
sourceCpp(code=src)
rcpp_sum(1:10)

rm(list=ls())

src<-'double rcpp_sum(NumericVector v){
    double sum = 0;
    for(int i=0; i<v.length(); ++i){
        sum += v[i];
    }
    return(sum);
}'
cppFunction(src)
rcpp_sum(1:10)


v <- c(1,2,3,4,5)
A <- 2.0
(result <-
  sapply(v, function(x){A*x}))

lambda<-'
NumericVector rcpp_lambda_1(){
  NumericVector v = {1,2,3,4,5};
  double A = 2.0;
  NumericVector res =
    sapply(v, [&](double x){return A*x;});
  return res;
}'
cppFunction(lambda)
rcpp_lambda_1()   

rm(list=ls())

out<-'#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
void rcpp_rcout(NumericVector v){
  // printing value of vector
  Rcout << "The value of v : " << v << "\\n" ;

  // printing error message
  Rcerr << "Error message \\n";
}'
sourceCpp(code=out)
vec=sample(1:5, 5)
rcpp_rcout(vec)

out2<-'#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
void rcpp_rprintf(NumericVector v){
    // printing values of all the elements of Rcpp vector  
    for(int j=0; j<v.length(); ++j){
        Rprintf("the value of v[%i] : %f \\n", j, v[j]);
    }
}'

sourceCpp(code=out2)
rcpp_rprintf(vec)

vect<-'#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
void rcpp_vector_access(){
  
  // Creating vector
  NumericVector v  {10,20,30,40,50};
  
  // Setting element names
  v.names() = CharacterVector({"A","B","C","D","E"});
  
  // Preparing vector for access
  NumericVector   numeric = {1,3};
  IntegerVector   integer = {1,3};
  CharacterVector character = {"B","D"};
  LogicalVector   logical = {false, true, false, true, false};
  
  // Getting values of vector elements
  double x1 = v[0];
  double x2 = v["A"];
  NumericVector res1 = v[numeric];
  NumericVector res2 = v[integer];
  NumericVector res3 = v[character];
  NumericVector res4 = v[logical];
  
  // Assigning values to vector elements
  v[0]   = 100;
  v["C"] = 300;
  NumericVector v2 {200,400};
  v[numeric]   = v2;
  //v[integer]   = v2;
  //v[character] = v2;
  //v[logical]   = v2;
  
  Rcout << "The value of v : " << v << "\\n" ;
  Rcout << "x1 and x2 are :" << x1 << "\\t" << x2 << "\\n" ; 
  Rprintf("the value of result %i is \\n", 1);
  Rcout << res1 << "\\n";
  Rprintf("the value of result %i is \\n", 2);
  Rcout << res2 << "\\n";
  Rprintf("the value of result %i is \\n", 3);
  Rcout << res3 << "\\n";
  Rprintf("the value of result %i is \\n", 4);
  Rcout << res4 << "\\n";
}'
sourceCpp(code=vect)
rcpp_vector_access()









out<-'# include <RcppArmadillo.h>
// [ [ Rcpp : : depends ( RcppArmadillo ) ] ]
using namespace Rcpp ;
// [[Rcpp:: export() ]]
int sumCpp(Rcpp : : IntegerVector x) { int n = x.size();
int res = 0;
for (int i = 0; i < n; i++){
r e s += x [ i ] ;
}
return res ; }'
sourceCpp(code=out)
vec=sample(1:5, 5)
rcpp_rcout(vec)