#include "Die.h"

Die::Die() {
    srand(time(NULL));
}

int Die::roll(int max) const {
    return (rand() % max)+1;
}



