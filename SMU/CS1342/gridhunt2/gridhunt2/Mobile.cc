#include "Mobile.h"
#include "constants.h"

ostream& operator<< (ostream& o, const Mobile& m) {
    o << m.getLongName() << " is at " << m.position;
    return o;
}

Mobile::Mobile(const string& theName, char theDecal) {
    position = Coord();
    name = theName;
    points = 0;
    wins = 0;
    round = 0;
    decal = theDecal;
}

const string Mobile::directionName[] = {"X", "N", "NE", "E", "SE",
    "S", "SW", "W", "NW"};

string Mobile::getLongName() const {
    return(name + " (" + decal + ")");
}

void Mobile::say(const string& message) const {
    cout << getLongName() << " says: \"" << message << "\"" << endl;
}

// subclasses will implement this pure virtual function
//void Mobile::makeMove() 


Coord Mobile::getPosition() {
    if (!pay(1)) return ERROR_COORD;

    cout << getLongName() << " asked for her/his/its position." << endl;
    return position;
}

bool Mobile::move(Direction dir) {
    bool ret;
    if (!pay(1)) return false;

    switch (dir) // number between 1..8
    {
        case N: ret = doMove(1, 0);
            break;
        case NE: ret = doMove(1, 1);
            break;
        case E: ret = doMove(0, 1);
            break;
        case SE: ret = doMove(-1, 1);
            break;
        case S: ret = doMove(-1, 0);
            break;
        case SW: ret = doMove(-1, -1);
            break;
        case W: ret = doMove(0, -1);
            break;
        case NW: ret = doMove(1, -1);
            break;
        default: // no valid direction
            cerr << "invalid movement direction:" << dir << endl;
            return false;
    }

    if (ret) cout << getLongName() << " moved " << directionName[dir] << "." << endl;
    else cout << getLongName() << " failed to move." << endl;

    return ret;
}

bool Mobile::teleport() {
    if (!pay(2)) return false;

    position = getGrid()->randomCoord();
    cout << getLongName() << " teleported." << endl;
    return true;
}

bool Mobile::pay(int howMuch) {
    if (howMuch < 0) return false;
    if (points < howMuch) return false;

    points -= howMuch;
    return true;
}

bool Mobile::doMove(int x, int y) {
    Coord newPosition = position + * new Coord(x, y);

    if (getGrid()->checkCoord(newPosition)) {
        position = newPosition;
        return true;
    }

    return false;
}

void Mobile::resetPosition() {
    position = getGrid()->randomCoord();
}

void Mobile::won() {
    wins++;
}

Coord Mobile::getPositionForFree() const {
    return position;
}
