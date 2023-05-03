/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#include "system.h"

#define delay 1000000


int main()
{
  printf("Hello from Nios II!\n");
  int returnedValue;
  while (1){
	  returnedValue = ALT_CI_GETINDEX_CI_0();
	  if (returnedValue < 2000000) {
		  if (returnedValue > 4096){
			  returnedValue = 8192 - returnedValue;
		  }
		  printf("Value: %d\n", returnedValue);
	  }

  }

  return 0;
}
