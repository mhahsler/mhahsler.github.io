#include "Monster.h"

Monster::Monster(const string& name, char decal) : Mobile(name, decal) {
}

/*
 * Monster behavior:
 * 70% monster moves (with 20% chance that monster moves a second time)
 * 25% monsters stays
 * 5% monster teleports
 */

void Monster::makeMove() {

    int num = getDie()->roll(100);

    if (num <= 70) { // move
        move(Direction(getDie()->roll(8)));

        // second move
        if (getDie()->roll(100) <= 20)
            move(Direction(getDie()->roll(8)));

    } else if (num <= 75) { // teleport
        say("Scotty beam me up!");
        teleport();
    }

    // else stay

}
