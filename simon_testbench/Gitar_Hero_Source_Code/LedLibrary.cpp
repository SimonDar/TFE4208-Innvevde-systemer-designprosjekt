#include "LedLibrary.hpp"

int prosentage(int LowNumber, int HighNumber) {
    
    int results = 1;

    float Input = CheckInput();
    float ZeroPoint = float(gitarFrequency_mHz[CheckClose(CheckInput())]);
    float MaxValueOut = 100;
    float MinValueOut = 0;


    float coeff[3][4] = {
        { float(pow(ZeroPoint, 2)), ZeroPoint, 1, 0 },
        { float(pow(LowNumber, 2)), float(LowNumber), 1, 100 },
        { float(pow(HighNumber, 2)), float(HighNumber), 1, 100 },
    };

    thirdDegreeFormula Formula = findSolution(coeff);
    
    results = Formula.x *pow(Input,2) + Formula.y * Input + Formula.z;

    return(results);
}

int redLedBinaryValues(int prosentage)
{
    float steps = 100;
    steps /= 18;
    int toleranceProsentage = 1;
    int result = 0;



    if( 50-toleranceProsentage < prosentage && prosentage < 50+toleranceProsentage)
    {
        printf("\nMiddle value\n");
        result = pow(2, 8) + pow(2, 9);
    }
    else if (50+toleranceProsentage <= prosentage)
    {
        printf("\nHigh value\n");


        for (float i = 9; i*steps <= prosentage; i+= 1)
        {
             result += pow(2, i);
        }
        
    }
    else if (50-toleranceProsentage >= prosentage)
    {
        printf("\nLow value\n");

        for (float i = 8; i*steps >= prosentage; i -= 1)
        {
             result += pow(2, i);
        }
    }


return result;
}

int greenLedBinaryValues(int position)
{
    return (pow(2, position));
}
