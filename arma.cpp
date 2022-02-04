#include <iostream>
#include <armadillo>

using namespace std;
using namespace arma;

void update_zero(int& k){
  ++k ;
}
void update_vector(int& k , arma::vec& v){
  ++k ; 
  v(0) += k ;
} 

void update_vector_new(int& k, arma::vec& v){
  ++k ;
  int n = v.n_elem ;
  vec w = arma::zeros(v.n_elem) ;
  w(0) += k ;
  v = w ;
}

arma::uvec arma_setdiff(arma::uvec x, arma::uvec y){

  x = arma::unique(x);
  y = arma::unique(y);
  // Note :  `unique(x)` returns the unique elements of x, sorted in ascending order.

  for (size_t j = 0; j < y.n_elem; j++) {
    // `size_t` is unsigned integer type that is big enough to represent the size of the largest possible object on the target platform.
    arma::uvec q1 = arma::find(x == y[j]);
    if (!q1.empty()) {
      x.shed_row(q1(0));
      // Note : `shed_row(row_number)` removes the specified row.
    }
  }
  return x;
}

int main()
  {
  // int k = 0 ;
  
  // update_zero(k) ;
  // update_zero(k) ;
  // update_zero(k) ;

  // cout << k << endl;

  // vec wv = regspace(1., 2., 10.);

  // update_vector(k, wv) ;
  
  // cout << k << endl ;
  // cout << wv << endl ;

  // update_vector_new(k, wv) ;

  // cout << k << endl;
  // cout << wv << endl;

  // vec c(5) ;
  // vec d(5) ;
  // d = c ;
  // c(3) += 1 ;
  // cout << c << endl;
  // cout << d << endl;
  // cout << dot(c,d) << endl;
  
  // vec c1={1,2} ;
  // vec c2={5,6} ;
  // mat A(2,2);
  // mat B(2,2);
  // A.col(0)=c1;
  // A.col(1)=c2;
  // B.col(0)={2,3};
  // B.col(1)={1,5};
  // cout << A << endl;
  // cout << A*B <<endl;
  
  mat C=regspace<arma::mat>(1, 5);
  mat D=repmat(C, 2, 2); 
  cout << C << endl;
  cout << D << endl;

  // mat E(3,5, arma::fill::randu) ;
  // uvec e = {1,3} ;
  // cout << E << endl;
  // cout << E.cols(e) << endl;
  // cout << E.cols(e).t() << endl;
  vec v = regspace(1., 2., 10.);
  vec u = shuffle(v);
  // vec w = linspace(1.,10., 20);
  // vec q(10, arma::fill::zeros) ;
  cout << v << endl;
  cout << u << endl;
  cout << normalise(v, 1) << endl;
  cout << 1 + v << endl;
  uvec inds = find(D.col(0)>3) ;
  mat SD = D.rows(inds) ;
  mat SSD = conv_to<mat>::from(D.rows(inds)).col(0) ;
  cout << SD << endl;
  cout << SSD << endl;
  // cout << w << endl;
  // cout << u[-2] << endl;
  // cout << q << endl;
  // cout << A.n_cols << endl;
  // cout << v.n_elem << endl; 

  // uvec vv = arma::find(v>4) ;
  // vec ww = {0, 0, 1, 1, 3} ;
  // uvec o = ww == zeros(5) ;
  // uvec no = ww != 0 ;
  // // cout << 0.5 * o << endl ; 
  // cout << o << endl ;
  // cout << no << endl ;
  // uvec www = arma::find(ww) ;
  // cout << www << endl ; 
  // cout << (ww(www)!=0) << endl ;
  // cout << vv.is_empty() << endl ;
  // cout << v << endl;
  // cout << vv << endl;
  // cout << u << endl;
  // cout << v % u << endl ;
  // for(int i=0 ; i<vv.n_elem ; ++i){
  //   u(vv(i)) += 10.0 ;
  // }
  // cout << u << endl ;
  // cout << (v<u) << endl ; 
  // uvec zz = zeros<uvec>(5) ;
  // uvec S = find(u<14) ;
  // uvec ns = S < 2 ;
  // cout << S << endl; 
  // cout << ns << endl;
  // uvec fns = find(ns) ;
  // zz(S(find(ns))) = ones<uvec>(fns.n_elem) ;
  // cout << zz << endl; 
  // cout << ones(5) << endl;
  // cout << ones(5) % zz << endl;

  vec r = {1,4,0,0,0,5,6,2,0,3} ;
  uvec miss = arma::find(r==0) ;
  uvec pres = arma::find(r!=0) ;
  uvec newr = arma::shuffle(arma_setdiff(arma::regspace<arma::uvec>(1, r.size()), arma::conv_to<arma::uvec>::from(r(pres)))) ;
  cout << r << endl;
  cout << newr << endl;
  r(miss) = arma::conv_to<arma::vec>::from(newr) ;
  cout << r << endl;

   
  return 0;
  }

