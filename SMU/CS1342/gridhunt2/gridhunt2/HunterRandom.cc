#include "HunterRandom.h"

HunterRandom::HunterRandom(const string& name, char decal) : Hunter(name, decal) {
}

void HunterRandom::makeMove() {
    while (getPoints()) move(Direction(getDie()->roll(8)));
}
