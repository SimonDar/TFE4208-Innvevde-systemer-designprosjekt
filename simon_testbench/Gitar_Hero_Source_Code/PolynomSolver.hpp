#ifndef POLYNOMSOLVER_H_
#define POLYNOMSOLVER_H_

#include <stdio.h>
#include <vector>

using namespace std;
 
// This functions finds the determinant of Matrix
float determinantOfMatrix(float mat[3][3]);
 
// This function finds the solution of system of
// linear equations using cramer's rule

  struct thirdDegreeFormula {
    float x;
    float y;
    float z;
};

thirdDegreeFormula findSolution(float coeff[3][4]);

#endif