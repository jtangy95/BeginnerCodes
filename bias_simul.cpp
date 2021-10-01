#include <iostream>
#include <armadillo>

using namespace std;

arma::vec maxbias_simul(int k, int n){
    arma::vec d(k, arma::fill::zeros) ;
    for(int j=0; j<k; ++j){
        arma::vec x(n, arma::fill::zeros) ;
        for(int i=0 ; i<n; ++i){
            double mu = 3 * (i+1) / 500 ;
            x(i) = arma::randn() + mu ; 
        }
        int imax = arma::index_max(x);
        d(j) =  x(imax) - 3 * (imax+1) / 500 ;
    }
    return d ;
 }

int main() {
    cout << maxbias_simul(10, 500) << endl;
    return 0 ;
}
   

