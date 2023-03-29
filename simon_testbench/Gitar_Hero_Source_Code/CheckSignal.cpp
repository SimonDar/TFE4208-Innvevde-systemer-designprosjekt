/*
 * CheckSignal.c
 *
 *  Created on: Mar 26, 2023
 *      Author: simondar
 */

#include "CheckSignal.hpp"
int arrayLengt() { return (sizeof(gitarFrequency_mHz) / sizeof(gitarFrequency_mHz[0])); }

int halfWay(int A, int B) { return((A+B)/2); }

int CheckInput()
{
    int TempValueToOutput_mHZ = 10000;
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
            return(0);
        }
        else if(LowNumber < InputFrequency && InputFrequency <= HighNumber)
        {
          return(i + 1);
        }
    }

    return(666);
}

int SpectrumValue(bool print_max_value)
{

    const int InputFrequency_const  = CheckInput();
    int interval = CheckClose(InputFrequency_const);

    int* printout;


    int HighNumber, LowNumber;
    

    switch(interval)
    {
      case 0:
        HighNumber = halfWay(gitarFrequency_mHz[interval], gitarFrequency_mHz[interval+1]);
        LowNumber = gitarFrequency_mHz[interval] * 2 - halfWay(gitarFrequency_mHz[interval], gitarFrequency_mHz[interval+1]);
        break;

      case 5:
        HighNumber = gitarFrequency_mHz[interval] * 2 - halfWay(gitarFrequency_mHz[interval], gitarFrequency_mHz[interval-1]);
        LowNumber = halfWay(gitarFrequency_mHz[interval], gitarFrequency_mHz[interval-1]);
        break;

      default: 
        HighNumber = halfWay(gitarFrequency_mHz[interval], gitarFrequency_mHz[interval+1]);
        LowNumber = halfWay(gitarFrequency_mHz[interval], gitarFrequency_mHz[interval-1]);
        break;
    }
    
    if (print_max_value)
    {
      printout = &HighNumber;
    }
    else
    {
      printout = &LowNumber;
    }


return (*printout);
}
