/*
 * CheckSignal.c
 *
 *  Created on: Mar 26, 2023
 *      Author: simondar
 */


#include "CheckSignal.h"

int halfWay(int A, int B) { return((A+B)/2); }

int CheckInput()
{
    int TempValueToOutput_mHZ = 269*100;
    return(TempValueToOutput_mHZ);
} 


int CheckClose(int InputFrequency) {

    int result = 404;

    for (int i = 0; i < arrayLengt(gitarFrequency_mHz); ++i)
    {
        if (i == 0 && arrayLengt <= halfWay(gitarFrequency_mHz[i], gitarFrequency_mHz[i+1]))
        {
            result = 0;
        }
        else if(i == arrayLengt(gitarFrequency_mHz)-1 && halfWay(gitarFrequency_mHz[i], gitarFrequency_mHz[i+1]) < InputFrequency)
        {

        }
        else if(halfWay(gitarFrequency_mHz[i], gitarFrequency_mHz[i+1]) < InputFrequency <= halfWay(gitarFrequency_mHz[i+1], gitarFrequency_mHz[i+1]))
        {

        }
    }

    return(result);

    /*
    int result;
    const int InputFrequency_const  = InputFrequency;
    switch(InputFrequency_const ) 
    {
      case ( InputFrequency_const  <= halfWay(E2,A2)):
        result = 1;
        break;

      case ( halfWay(E2,A2) < InputFrequency_const  <= halfWay(A2,D3)):
        result = 2;
        break;

      case ( halfWay(A2,D3) < InputFrequency_const  <= halfWay(D3,G3)):
        result = 3;
        break;

      case ( halfWay(D3,G3) < InputFrequency_const  <= halfWay(B3,E4)):
        result = 4;
        break;

      case ( halfWay(B3,E4) < InputFrequency_const ):
        result = 5;
        break;

      default: return(0);
        result = 0;
        break;

    }*/


}