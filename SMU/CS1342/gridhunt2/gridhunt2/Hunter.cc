#include "Hunter.h"
#include "constants.h"

Hunter::Hunter(const string& name, char decal) : Mobile(name, decal) {
    monster = NULL;
}

// pure virtual function
//void Hunter::makeMove()

// I am a friend of Mobile
int Hunter::distanceToMonster() {
    if (!pay(1)) return ERROR_DIST;

    cout << getLongName() << " asked for the distance to the monster." << endl;

    return position.distance(monster->position);
}

// I am a friend of Mobile
Coord Hunter::positionOfMonster() {
    if (!pay(2)) return ERROR_COORD;

    cout << getLongName() << " asked for the position of the monster." << endl;

    return (monster->position);
}



