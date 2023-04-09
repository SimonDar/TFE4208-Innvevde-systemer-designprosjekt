/*
 * main.h
 *
 *  Created on: Mar 26, 2023
 *      Author: simondar
 */

#ifndef LEDLIBRARY_H_
#define LEDLIBRARY_H_

    #include <stdio.h>
    #include <math.h>
    #include <vector>

    // #include "system.h"
    #include "altera_avalon_pio_regs.hpp"
    #include "CheckSignal.hpp"
    #include "PolynomSolver.hpp"


    int prosentage(int HighNumber, int LowNumber);
    int redLedBinaryValues(int prosentage);
    int greenLedBinaryValues(int position);

#endif
