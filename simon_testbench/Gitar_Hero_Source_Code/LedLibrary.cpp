#include "LedLibrary.hpp"

int prosentage(int HighNumber, int LowNumber) {
    
    int results;
    float coeff[3][4];
    float MaxValueOut = 100;
    float MinValueOut = 0;

    coeff[0][0] = halfWay(HighNumber, LowNumber);
    coeff[0][1] = LowNumber;
    coeff[0][2] = HighNumber;

    for (int i = 0; i < 3; i++)
    {

        coeff[i][2] = 1;
        coeff[i][3] = boolean(i);
    }
    


     coeff[3][4] = {
        { 100000000, 10000, 1, 0 },
        { float(pow(9000, 2)), 9000, 1, 100 },
        { float(pow(11000, 2)), 11000, 1, 100 },
    };
 
    vector<float> Formula = findSolution(coeff);


    
    return(results);
}


