#ifndef HUNTER_H
#define HUNTER_H

#include "Mobile.h"
#include "Monster.h"

/** A Hunter. Inherit from this class to implement your player class */
class Hunter : public Mobile {
public:
    Hunter(const string& name = "A player", char decal = 'x');
    /** Overwrite this function to implement your player's behavior.
     * You can use the public member functions in Mobile and Hunter or
     * in other classes. Remember that you only have 1-5 points per round
     * and move, teleport, getPosition, distanceToMonster and
     * positionOfMonster (some of them are inherited from Mobile) cost points.
     */
    virtual void makeMove() =0;
    /** get the distance to the monster in moves. Cost: 1 point. */
    int distanceToMonster();
    /** get the position of the monster. Cost: 2 points. */
    Coord positionOfMonster();

    /** this is only used by the game to initialize your "monster scanner"
     * which allows you to use distanceToMonster() and positionOfMonster().
     */
    void setMonster(Monster* monster) {
        this->monster = monster;
    }

private:
    Monster *monster;
};


#endif
