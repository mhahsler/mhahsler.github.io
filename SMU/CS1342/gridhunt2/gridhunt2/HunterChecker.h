#include "Hunter.h"

/** This player checks constantly where the monster is but is to lazy to 
  * go anywhere.
  */
class HunterChecker : public Hunter {
    public: 
	HunterChecker(const string& name = "Checker", char decal = 'x');
	
	/** I'm just checking where the monster is. */
	void makeMove();

};

