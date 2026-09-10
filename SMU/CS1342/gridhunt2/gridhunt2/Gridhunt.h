#ifndef GRIDHUNT_H
#define GRIDHUNT_H

#include <iostream>
#include <vector>

#include "Die.h"
#include "Grid.h"
#include "Monster.h"
#include "Hunter.h"

// can your terminal do Xterm colors?
#define COLOR_TERM

#define SLEEP_TIME 2
#define MONSTER_POINTS 2
#define HUNTER_POINTS 5

/** Main class of the game. */
class Gridhunt {
public:
    /** Create a game with a grid (default: 30x30) and run the game
     * for a maximum of maxRounds rounds
     */
    Gridhunt(int maxN = 30, int maxE = 30, int maxRounds = 100);
    ~Gridhunt();
    /** Run the game. Turn detailed display on/off with visual. */ 
    void run(bool visual = true);
    /** Display Mobile objects on Grid */ 
    void show() const;
    /** Display current leader borad */
    void leaderBoard() const;
    void setHunters(vector<Hunter*>);
    void setMonster(Monster*);

private:
    vector<Hunter*> hunters;
    Monster* monster;
    int maxRounds;
    Grid* grid;
    Die* die;

    enum Cond {
        RUN, WIN
    };

};

#endif
