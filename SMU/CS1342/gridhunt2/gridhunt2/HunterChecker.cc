#include "HunterChecker.h"
#include <sstream>
#include <cmath>

HunterChecker::HunterChecker(const string& name, char decal): Hunter(name, decal) {}


void HunterChecker::makeMove() {
    // int -> string conversion
    stringstream ss;
    ss << getRound();
    say("This is round " + ss.str());

    if(getPoints() < 2) {
        say("I don't have enough points to do anything!");
        return;
    }

    Coord pOM = positionOfMonster();
    ostringstream message;
    message << "The monster is at: " << pOM; // since pOM overloads <<
    say (message.str());

    if (pOM.getE() > getPosition().getE()) move(E);
    else if (pOM.getE() < getPosition().getE()) move(W);
    else if (pOM.getN() > getPosition().getN()) move(N);
    else if (pOM.getN() < getPosition().getN()) move(S);
    else {
        say("I must be on top of the monster!");
        return;
    }
    
}
