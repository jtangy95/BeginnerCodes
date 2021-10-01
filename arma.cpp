#include <iostream>
#include <armadillo>

using namespace std;
using namespace arma;

int main()
  {
  vec c1={1,2} ;
  vec c2={5,6} ;
  mat A(2,2);
  mat B(2,2);
  A.col(0)=c1;
  A.col(1)=c2;
  B.col(0)={2,3};
  B.col(1)={1,5};
  cout << A << endl;
  cout << A*B <<endl;
  
  mat C=regspace<arma::mat>(1, 5);
  mat D=repmat(C, 2, 2); 
  vec v = regspace(1., 2., 10.);
  vec u =shuffle(v);
  vec w = linspace(1.,10., 20);
  vec q(10, arma::fill::zeros) ;
  cout << C << endl;
  cout << D << endl;
  cout << v << endl;
  cout << u << endl;
  cout << w << endl;
  cout << u[-2] << endl;
  cout << q << endl;
  return 0;
  }

