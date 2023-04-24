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


void testAll()
{

	printf("START\nInputValue:\t%d\n",CheckInput());
	printf("HalfWay to zero:\t%d\n",halfWay(CheckInput(), 0));
	printf("Arraylengt:\t%d\n",arrayLengt());
	printf("CheckClose:\t%d\n",CheckClose(CheckInput()));
	printf("SpectrumValue HIGH:\t%d\n",SpectrumValue(true));
	printf("SpectrumValue LOW:\t%d\n",SpectrumValue(false));
	printf("prosentage:\t%d\n",prosentage(SpectrumValue(false),SpectrumValue(true)));
	printf("redLedBinaryValues:\t%d\n",redLedBinaryValues(prosentage(SpectrumValue(false),SpectrumValue(true))));
	printf("GreenLedBinaryValues:\t%d\n",greenLedBinaryValues(CheckClose(CheckInput())));


}

int combinedOutput(int red, int green)
{

return 0;
}

int main()
{

testAll();


return 0;
}

