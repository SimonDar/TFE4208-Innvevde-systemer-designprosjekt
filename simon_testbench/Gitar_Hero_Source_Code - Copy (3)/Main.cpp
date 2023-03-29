/*
 * Main.c
 *
 *  Created on: Mar 26, 2023
 *      Author: simondar
 */
#include "Main.hpp"



void printbit(unsigned n)
{
    unsigned i;
    for (i = 1 << 17; i > 0; i = i / 2)
        (n & i) ? printf("1") : printf("0");
    printf("\n");
}



void testled()
{
	int count = 1;
	int delay;

	printf("Funker");
	while(1)
	{
		for(int var = 0b1; var <= 0b1111111111111111000; var = pow(2,count))
		{
			//IOWR_ALTERA_AVALON_PIO_DATA(var);
			delay = 0;
			//printbit(var);
			//printf("\n");

			while(delay < 1000000)
			{
			delay++;
			}
			count++;

		}
		printf("Done, next\n");
		count = 0;


	}
}


void initprint()
{
	printf("Hello from Nios II!34\n");
	printf("%d\n",CheckInput());
	printbit(CheckInput());
	printf("\n");
}


int main()
{
initprint();
printf("%d",CheckClose(CheckInput()));
SpectrumValue(true);

    float coeff[3][4] = {
        { 100000000, 10000, 1, 0 },
        { float(pow(9000, 2)), 9000, 1, 100 },
        { float(pow(11000, 2)), 11000, 1, 100 },
    };
 
    findSolution(coeff);

return 0;
}