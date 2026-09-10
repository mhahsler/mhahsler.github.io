/*
 * Gridhunt2
 * 
 * All files of this program are
 * Copyright (C) 2010 Michael Hahsler
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

#include <iostream>
#include <string>
#include <sstream>

#include "Gridhunt.h"
#include "HunterRandom.h"
#include "HunterChecker.h"
//#include "SuperHunter.h" // include your hunter here!

#include "HunterDerek.h"
#include "EpicHunter.h"
#include "FairHunter.h"
#include "EpicHunter2.h"
#include "BeastHunter.h"
#include "HunterSuper.h"
#include "SuperHunter.h"
#include "AustinHunter.h"
#include "HunterAustin.h"
#include "MyHunter.h"
#include "HunterJason.h"
#include "HunterCheater.h"
//#include "hunterA.h"
//#include "hunterB.h"
//#include "myHunter.h"

#include <vector>

//#define FAST

/** \mainpage Gridhunt2: The famous Gridhunt game
 * Idea by Werner Schönfeldinger and reimplemented by Michael Hahsler
 *
 * \section o Objective
 * The objective of gridhunt is to implement a hunter (i.e., a subclass of
 * Hunter) who can catch the monster faster than all other hunters. Gridhunt
 * uses a 30x30 grid of squares. A monster moves on this grid (see class
 * Monster for how exactly the monster moves).  Gridhunt is turn based. Each
 * turn each hunter gets between 1 and 5 points which she/he can use for actions
 * (e.g., move to an adjacent square, find out where the monster is;
 * teleport to a random
 * location on the grid).  A hunter catches the monster if she/he moves on the
 * same square the monster currently occupies. If the monster survives 100
 * rounds it wins.
 *
 * \section howto How to Start
 * Download the code from  <a href="http://michael.hahsler.net/SMU/1342/gridhunt2/">the Gridhunt2 web site.</a> 
 * Make sure you check out the copyright notice below.
 * Start with a copy of HunterRandom, give it a new class name. Then edit
 * gridhunt_start.cc to include your new hunter in the hunting party. Modify the new
 * hunter's makeMove() function to make her/him smarter.
 *
 * \section cr Compilation and Running the Game
 * Add your class to the Makefile (line 29) and
 * type make in your teminal.
 * Run the game with ./gridhunt.
 * Alternatively you can import the project into NetBeans
 * and run it from there.
 *
 * Good luck!
 *
 * \section copy Copyright
 * Copyright (C) 2010 <a href="http://michael.hahsler.net">Michael Hahsler</a>
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

using namespace std;

/** The famous gridhunt game. */
int main() {
    const int MAX_N = 30;
    const int MAX_E = 30;
    const int MAX_ROUNDS = 100;

#ifdef FAST
    const int MAX_RUNS = 1000;
#endif

//    char decal = '1';	// symbol used on the grid for a hunter

    // player uses dynamic binding so we use pointers
    vector <Hunter*> huntingParty;
    
    /*
    // add 3 random hunters
    for (int j = 1; j <= 3; j++) {
        stringstream ss;
        ss << "Random " << decal;
        huntingParty.push_back(new HunterRandom(ss.str(), decal));
	decal++;
    }
    
    // add 3 checker hunters
    for (int j = 1; j <= 3; j++) {
        stringstream ss;
        ss << "Checker " << decal;
        huntingParty.push_back(new HunterChecker(ss.str(), decal));
	decal++;
    }
    */	
    
    // add your own hunter (change the class name and don't forget the include)
    huntingParty.push_back(new HunterChecker()); 
    huntingParty.push_back(new EpicHunter()); // Kate & Katelyn
    huntingParty.push_back(new FairHunter());
    //huntingParty.push_back(new HunterDerek()); // now EpicHunter2???
    huntingParty.push_back(new EpicHunter2());
    huntingParty.push_back(new BeastHunter());
    huntingParty.push_back(new HunterSuper());
    huntingParty.push_back(new SuperHunter()); // Jeff & Ben 
    huntingParty.push_back(new AustinHunter()); // Austin H
    huntingParty.push_back(new MyHunter()); // Hunter Man: Maryssa
    huntingParty.push_back(new HunterAustin()); // Austin B 
    huntingParty.push_back(new HunterJason()); 
    
    //huntingParty.push_back(new HunterCheater()); 

    /* do not compile    
       huntingParty.push_back(new myHunter()); // Zach
       huntingParty.push_back(new hunter1());
       huntingParty.push_back(new hunter2());
       huntingParty.push_back(new hunterA()); 
       huntingParty.push_back(new hunterB()); 
    */

    // create monster
    Monster* monster = new Monster("Gozilla", 'G');

    // create game and add monster and hunters
    Gridhunt gh(MAX_N, MAX_E, MAX_ROUNDS);
    gh.setMonster(monster);
    gh.setHunters(huntingParty);

    // run game
    gh.leaderBoard();
    
    char key;
    cout << "Go? (y):" << flush;
    cin >> key;

#ifdef FAST
    for (int i = 0; i < MAX_RUNS; i++) gh.run(false);
    gh.leaderBoard();
#else
    gh.run(true);
    gh.leaderBoard();
#endif


    // release memory
    for (size_t j = 0; j < huntingParty.size(); j++) {
        delete huntingParty.at(j);
    }
    delete monster;

    return 0;
}
