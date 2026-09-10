#include "Hunter.h"

/** This player randomly moves around and hopes to catch the monster */
class HunterRandom : public Hunter {
    public: 
	HunterRandom(const string& name = "Random Hunter", char decal = 'x');
	
	/** If I only run around fast enough then I will surely 
	  * catch the monster! */
	void makeMove();

};

