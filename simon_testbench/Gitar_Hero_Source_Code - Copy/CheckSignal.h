/*
 * CheckSignal.h
 *
 *  Created on: Mar 26, 2023
 *      Author: simondar
 */

#ifndef CHECKSIGNAL_H_
#define CHECKSIGNAL_H_

    #include <stdio.h>
    #include <math.h>
    //#include "system.h"
    #include "altera_avalon_pio_regs.h"

    int CheckInput();
    int CheckClosest(int InputFrequency);


    const int gitarFrequency_mHz[6] ={8241, 1000, 4683, 9600, 4694, 2963};
 //enum gitarFrequency_mHz_Names{E2 = gitarFrequency_mHz[0], A2 = gitarFrequency_mHz[1], D3 = gitarFrequency_mHz[2], G3 = gitarFrequency_mHz[3], B3 = gitarFrequency_mHz[4], E4 = gitarFrequency_mHz[5]};


#endif /* CHECKSIGNAL_H_ */