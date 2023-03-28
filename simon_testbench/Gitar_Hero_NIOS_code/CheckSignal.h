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
    //#include "altera_avalon_pio_regs.h"

    int CheckInput();
    int CheckClosest(int InputFrequency);
    
    int gitarFrequency_mHz[6] ={8241, 1000, 4683, 9600, 4694, 2963};
    int arrayLengt() { return (sizeof(gitarFrequency_mHz) / sizeof(gitarFrequency_mHz[0])); }



#endif /* CHECKSIGNAL_H_ */
