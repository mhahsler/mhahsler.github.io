#ifndef GRID_H
#define GRID_H

#include <cstdlib>
#include "Die.h"
#include "Coord.h"

/** Some helper functions needed for the grid */
class Grid{
    public:
        Grid(int, int);			  // max x and max y
        
	/** check if some coordinates are inside the grid */
	bool checkCoord(const Coord&) const;    // is the Coord valid?
        
	/** produce a random location */
	Coord randomCoord() const;
	
	/** get the number of squares along the x-axis. 
	  * The squares are numbered 0 to maxX-1. 
	  */
	int getMaxN() const;
	/** get the number of squares along the y-axis. 
	  * The squares are numbered 0 to maxY-1.
	  */
	int getMaxE() const;

	/** the grid has its die */
	const Die die;

    private:
        int maxN, maxE;
};

#endif
