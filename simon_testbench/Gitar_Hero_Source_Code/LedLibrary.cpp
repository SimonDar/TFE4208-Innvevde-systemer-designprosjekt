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
    
    results =Formula.x *pow(Input,2) + Formula.y * Input + Formula.z;

    if (results < 0)
    {
        results = 0;
        printf("Prosentage was less than zero \n");
    }
         

    return results;
}

int redLedBinaryValues(int prosentage)
{
    float steps = 100/9;
    int IdealFrequancy = gitarFrequency_mHz[CheckClose(CheckInput())];
    int tolerance = 3;
    int result = 0;
    int redLedBegin = 8;



    if( prosentage < tolerance )
    {
        printf("Middle value\n");
        result = 0b1010101010101010100000000;/*pow(2, 5) + pow(2, 8) + pow(2, 9) + pow(2, 12);*/
    }
    else if (IdealFrequancy < CheckInput())
    {
        printf("High value\n");


        for (float i = 9; (i-9)*steps <= prosentage; i+= 1)
        {
             result += pow(2, i + redLedBegin);
        }
        
    }
    else if (IdealFrequancy > CheckInput())
    {
        printf("Low value\n");

        float i = 8;
        for (i = 8; (8-i)*steps <= prosentage; i -= 1)
        {
             result += pow(2, i + redLedBegin);
        }
    }


 return result;
}

int greenLedBinaryValues(int position)
{
    return (pow(2, position));
}
