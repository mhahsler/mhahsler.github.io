#include <iostream>
//#include <cmath>
// abs for int is in cstdlib and not in cmath
#include <cstdlib>
using namespace std;

#ifndef COORD_H
#define COORD_H

/** Coordinates */
class Coord {

    friend ostream& operator<< (ostream&, const Coord &);
    
    public:
    /** Create a coordinate object (North/East) */
    Coord(int n = 0, int e = 0);

    int getN() const { return n; }
    int getE() const { return e; }
    void setCoord(int, int);

    /** Get distance to another Coord. */ 
    int distance(const Coord&) const;
    bool operator==(const Coord&) const;
    bool operator!=( const Coord& right ) const { return !(*this == right); }
    Coord operator+(const Coord&) const;

private:
    int n, e;
};
#endif
