#include "Coord.h"
#include <iostream>
using namespace std;

/** global insertion operator for Coord */
ostream& operator<< (ostream& o, const Coord& c){
    o << "Coord(" << c.n << ", " << c.e << ")";
    return o;
}


Coord::Coord(int n, int e) {
    setCoord(n, e);
}

void Coord::setCoord(int n, int e) {
    this->n = n;
    this->e = e;
}

int Coord::distance(const Coord& arg2) const {
    return max(abs(n - arg2.n), abs(e - arg2.e));
}

bool Coord::operator==(const Coord& arg2) const {
    return (n == arg2.n && e == arg2.e);
}

Coord Coord::operator+(const Coord& arg2) const {
    Coord res(n + arg2.n, e + arg2.e);
    return res;
}
