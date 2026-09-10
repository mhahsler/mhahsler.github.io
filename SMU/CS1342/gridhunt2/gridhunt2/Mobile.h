#include <iostream>
#include <iomanip>
#include <string>
#include "Grid.h"

using namespace std;

#ifndef MOBILE_H
#define MOBILE_H

// forward definition for friend
class Hunter;
class Gridhunt;

/**
 * Implements a mobile object (either Hunter or Monster).
 */
class Mobile {
    /** displays mobile name and location */
    friend ostream& operator<< (ostream&, const Mobile&);

public:
    /**
     * Simple constructor.
     * @param name Name of the mobile.
     * @param decal Decal used for dispaying the mobile on a grid.
     */
    Mobile(const string& name = "Some Mobile", char decal = 'x');
     /** enumeration of possible directions. */
    enum Direction {
        N = 1, NE, E, SE, S, SW, W, NW
    };
    
    /** say something (don't use cout) */
    void say(const string&) const;

    /** reduce your available points for this round. */
    bool pay(int);
    /** get your own position. Cost: 1 point. */
    Coord getPosition();
    /** teleport you to a random location on the grid. Cost: 2 points. */
    bool teleport();
    /** move the mobile one square in a given direction. Cost: 1 point. */
    bool move(Direction);
    /** this member function will be called once per round.
     * It is a pure virtual function and has to be overloaded in your 
     * subclass in order to implement the mobile's behavior. */
    virtual void makeMove() =0;

    Die* getDie() const { return die; }
    string getName() const { return name; }
    int getWins() const { return wins; }
    char getDecal() const { return decal; }
    int getPoints() const { return points; }
    Grid* getGrid() const { return grid; }
    /** get the round number (rounds start with 1) */
    int getRound() const { return round; }

    /** string representaion of directions for printing. */
    static const string directionName[];

private:
    Coord position;
    string name;
    char decal;
    int points;
    int wins;
    Grid *grid;
    Die *die;
    int round;

    void won();
    void resetPosition();
    Coord getPositionForFree() const;
    
    string getLongName() const;

    bool doMove(int, int);

    void setPoints(int points) { this->points = points; }
    void setGrid(Grid* grid) { this->grid = grid; }
    void setDie(Die* die) { this->die = die; }
    void setRound(int round) { this->round = round; }


    // Gridhunt is a friend
    friend class Gridhunt;
    // player can look at the position sometimes directly
    //friend int Hunter::distanceToMonster();
    //friend Coord Hunter::positionOfMonster();
    friend class Hunter;

};
#endif
