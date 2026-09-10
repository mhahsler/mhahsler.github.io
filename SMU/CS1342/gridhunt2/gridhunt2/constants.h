#ifndef CONSTANTS_H
#define	CONSTANTS_H

#include "Coord.h"

/** \file constants.h */
/** error coordinate returned by functions if getting the coordinate failed
  * (e.g., you do not have enough points left). */
const Coord ERROR_COORD(-1, -1);
/** error distance returned by functions if getting the distance failed
  * (e.g., you do not have enough points left). */
const int ERROR_DIST = -1;

#endif

