/*
 * CheckSignal.c
 *
 *  Created on: Mar 26, 2023
 *      Author: simondar
 */

#include "CheckSignal.h"
int arrayLengt() { return (sizeof(gitarFrequency_mHz) / sizeof(gitarFrequency_mHz[0])); }


int halfWay(int A, int B) { return((A+B)/2); }

int CheckInput()
{
    int TempValueToOutput_mHZ = 11000;
    return(TempValueToOutput_mHZ);
}


int CheckClose(int InputFrequency) {

    int HighNumber, LowNumber;

    for (int i = 0; i < arrayLengt(); ++i)
    {
      
        HighNumber = halfWay(gitarFrequency_mHz[i+1], gitarFrequency_mHz[i+2]);
        LowNumber= halfWay(gitarFrequency_mHz[i], gitarFrequency_mHz[i+1]);
        const int InputFrequency = CheckInput();
        
        if (i == 0 && InputFrequency <= LowNumber)
        {
            printf("a1 %d \n", LowNumber);
            return(0);
        }
        else if(i == arrayLengt()-1 && LowNumber < InputFrequency)
        {
          
          printf("a2%d \n", LowNumber);
          return(1);
        }
        else if(i && LowNumber < InputFrequency)
        {
          printf("a3-%d \n", LowNumber);
          printf("a3-%d \n", HighNumber);
          return(i);
        }
    }

    return(100);
}
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

