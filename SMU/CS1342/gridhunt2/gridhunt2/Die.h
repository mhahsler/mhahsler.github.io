#ifndef DIE_H
#define DIE_H

#include <cstdlib>
#include <ctime>

/** simple multi-sided die. */
class Die{

    public:
        Die();
        /** get a random number between 1 and max. */
	int roll(int max = 6) const;

};

#endif
