/* 
 * Gridhunt2 
 *
 * A small game written in C++ used to teach students basic OO 
 * concepts like encapsulation, composition, inheritance and polymorphism.
 *
 * Copyright (C) 2010  Michael Hahsler
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#include "Gridhunt.h"

Gridhunt::Gridhunt(int maxN, int maxE, int maxRounds) {
    grid = new Grid(maxN, maxE);
    die = new Die;
    this-> maxRounds = maxRounds;
}

Gridhunt::~Gridhunt() {
    delete grid;
    delete die;
}

void Gridhunt::setHunters(vector<Hunter*> hunters) {
    this->hunters = hunters;	// this is not a deep copy!
    for (size_t j = 0; j < hunters.size(); j++) {
        hunters[j]->setGrid(grid);
        hunters[j]->setDie(die);
    }
}

void Gridhunt::setMonster(Monster* m) {
    monster = m;
    monster->setGrid(grid);
}

void Gridhunt::run(bool visual) {
    Cond condition = RUN;

    // set monster and set random location for hunters
    monster->resetPosition();
    for (size_t j = 0; j < hunters.size(); j++) {
        hunters[j]->setMonster(monster);
        hunters[j]->resetPosition();
    }

    // start the hunt
    for (int i = 1; i <= maxRounds; i++) {

        cout << "\nRound: " << i << endl;

        // monster moves first
        monster->setPoints(MONSTER_POINTS); // monster always gets 2 points
        monster->makeMove();
        cout << *(monster) << endl;

        // hunters move
        for (size_t j = 0; j < hunters.size(); j++) {
            hunters[j]->setRound(i);
            hunters[j]->setPoints(die->roll(HUNTER_POINTS)); // hunter gets 1..5 points
            hunters[j]->makeMove();
            cout << *(hunters[j]) << endl;
        }

        if (visual) {
            show();
            cout << "\nRound: " << i << endl;
            sleep(SLEEP_TIME);
        }

        // check for winner
        Coord mPOS = monster->position;
        for (size_t j = 0; j < hunters.size(); j++) {
            if (mPOS == hunters[j]->position) {
                hunters[j]->won();
                condition = WIN;
            }
        }

        if (condition == WIN) break;

    }

    if (condition == RUN) monster->won();

}

void Gridhunt::show() const {
    // static so we do not allocate it for every call
    string g[grid->getMaxN()][grid->getMaxE()];
    // clear the grid


#ifdef COLOR_TERM
    static const string emptySq = "\033[0;37m."; // gray
    static const string monsterCol = "\033[0;31;1m"; // red/b
    static const string hunterCol = "\033[0;34;1m"; // green/b
    static const string resetCol = "\033[0m";
#else
    static const string emptySq = ".";
    static const string monsterCol = "";
    static const string hunterCol = "";
    static const string resetCol = "";
#endif


    for (int i = 0; i < grid->getMaxN(); i++)
        for (int j = 0; j < grid->getMaxE(); j++) g[i][j] = emptySq;

    Coord pos, mpos;

    mpos = monster->position;
    g[mpos.getN()][mpos.getE()] = monsterCol;
    g[mpos.getN()][mpos.getE()] += monster->decal;

    for (size_t j = 0; j < hunters.size(); j++) {
        pos = hunters[j]->position;
        if (pos == mpos) g[pos.getN()][pos.getE()] = monsterCol + hunters[j]->decal;
        else g[pos.getN()][pos.getE()] = hunterCol + hunters[j]->decal;
    }


    for (int i = 0; i < grid->getMaxN(); i++) {
        for (int j = 0; j < grid->getMaxE(); j++)
            cout << g[grid->getMaxN() - i - 1][j] << " ";
        cout << endl;
    }

    cout << resetCol;
}

void Gridhunt::leaderBoard() const {

    cout << "\nGridhunt Leaderboard\n\n";
    
    cout << setw(20) << left << "Name"
	<< setw(5) << left << "Decal" 
	<< setw(5) << right << "Wins" << endl;

    cout << setw(20) << left << monster->getName() 
	<< setw(5) << left << monster->getDecal() 
	<< setw(5) << right << monster->getWins() << endl;

    // sort hunters by points
    for (size_t j = 0; j < hunters.size(); j++) {
	cout << setw(20) << left << hunters[j]->getName()
	    << setw(5) << left << hunters[j]->getDecal() 
	    << setw(5) <<  right << hunters[j]->getWins() << endl;
    }


}
