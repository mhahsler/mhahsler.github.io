#ifndef MONSTER_H
#define MONSTER_H

#include "Mobile.h"

class Monster : public Mobile {
public:
    Monster(const string& name = "A nameless monster", char decal = 'M');
    void makeMove();
};

#endif
