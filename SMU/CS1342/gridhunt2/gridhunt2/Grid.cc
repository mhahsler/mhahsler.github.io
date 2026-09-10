#include "Grid.h"

Grid::Grid(int maxNN, int maxEE) {
    maxN = maxNN;
    maxE = maxEE;
}

bool Grid::checkCoord(const Coord& aCoord) const {
    if(aCoord.getN() >= maxN || aCoord.getN() < 0) return false;
    if(aCoord.getE() >= maxE || aCoord.getE() < 0) return false;
    return true;
}

Coord Grid::randomCoord() const {
    Coord randomCoord(die.roll(maxN)-1, die.roll(maxE)-1);
    return randomCoord; 
}

int Grid::getMaxN() const { return maxN; }

int Grid::getMaxE() const { return maxE; }
