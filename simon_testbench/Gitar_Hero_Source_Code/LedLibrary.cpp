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


